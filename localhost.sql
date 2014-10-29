-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 29, 2014 at 04:57 PM
-- Server version: 5.5.34-0ubuntu0.13.04.1
-- PHP Version: 5.5.3-1ubuntu2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Am_GD_root`
--

-- --------------------------------------------------------

--
-- Table structure for table `AM_assets`
--

CREATE TABLE IF NOT EXISTS `AM_assets` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_assets`
--

INSERT INTO `AM_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 784, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":[],"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 12, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 13, 14, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 15, 16, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 17, 18, 1, 'com_config', 'com_config', '{}'),
(7, 1, 19, 24, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 25, 302, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 303, 304, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 305, 306, 1, 'com_installer', 'com_installer', '{"core.admin":{"7":0},"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 307, 308, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 309, 310, 1, 'com_login', 'com_login', '{}'),
(13, 1, 311, 312, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 313, 314, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 315, 316, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 317, 318, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 319, 320, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 321, 390, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 391, 394, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 395, 396, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 397, 398, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 399, 400, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 401, 402, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 403, 404, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.own":{"6":1},"core.edit.state":[]}'),
(25, 1, 405, 408, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 409, 410, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 26, 27, 2, 'com_content.category.2', 'News', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 20, 21, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 392, 393, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 406, 407, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 161, 190, 191, 4, 'com_content.article.1', 'Can Joomla! 1.5 operate with PHP Safe Mode On?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 8, 28, 35, 2, 'com_content.category.7', 'About Joomla!', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(34, 8, 36, 41, 2, 'com_content.category.8', 'News', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(35, 8, 42, 57, 2, 'com_content.category.9', 'FAQs', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(36, 8, 58, 139, 2, 'com_content.category.10', 'Template Details', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(37, 33, 29, 30, 3, 'com_content.category.11', 'The Project', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(38, 33, 31, 32, 3, 'com_content.category.12', 'The CMS', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(39, 33, 33, 34, 3, 'com_content.category.13', 'The Community', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(40, 35, 43, 48, 3, 'com_content.category.14', 'General', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(41, 35, 49, 50, 3, 'com_content.category.15', 'Current Users', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(42, 35, 51, 54, 3, 'com_content.category.16', 'New to Joomla!', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(43, 35, 55, 56, 3, 'com_content.category.17', 'Languages', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(44, 34, 37, 38, 3, 'com_content.category.18', 'Latest', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(45, 34, 39, 40, 3, 'com_content.category.19', 'Newsflash', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(46, 36, 59, 70, 3, 'com_content.category.20', 'Design & Features', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(47, 36, 71, 72, 3, 'com_content.category.21', 'Advanced Stuff', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(48, 36, 73, 78, 3, 'com_content.category.22', 'General', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(49, 36, 79, 92, 3, 'com_content.category.23', 'Layout Variations', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(50, 36, 93, 126, 3, 'com_content.category.24', 'Testimonials', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(51, 36, 127, 138, 3, 'com_content.category.25', 'Menu Styles', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(52, 165, 226, 227, 4, 'com_content.article.2', 'Content Layouts', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 169, 254, 255, 4, 'com_content.article.3', 'Docs & Support', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(54, 162, 208, 209, 4, 'com_content.article.4', 'Does the PDF icon render pictures and special characters?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(55, 169, 256, 257, 4, 'com_content.article.5', 'Easy to Start', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(56, 155, 143, 144, 3, 'com_content.article.6', 'Example Pages and Menu Links', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(57, 165, 228, 229, 4, 'com_content.article.7', 'Extensions', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(58, 169, 258, 259, 4, 'com_content.article.8', 'Image Gallery', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(59, 169, 260, 261, 4, 'com_content.article.9', 'Flash Gallery Alternative', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(60, 161, 192, 193, 4, 'com_content.article.10', 'How do I install Joomla! 1.5?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(61, 162, 210, 211, 4, 'com_content.article.11', 'How do I localise Joomla! to my language?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(62, 159, 170, 171, 4, 'com_content.article.12', 'How do I remove an Article?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(63, 160, 178, 179, 4, 'com_content.article.13', 'How do I upgrade to Joomla! 1.5 ?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(64, 162, 212, 213, 4, 'com_content.article.14', 'I installed with my own language, but the Back-end is still in English', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(65, 170, 274, 275, 4, 'com_content.article.15', 'Introducing JSN Epic', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(66, 161, 194, 195, 4, 'com_content.article.16', 'Is it possible to change A Menu Item''s Type?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(67, 159, 172, 173, 4, 'com_content.article.17', 'Is it useful to install the sample data?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(68, 166, 238, 239, 4, 'com_content.article.18', 'Joomla! Facts', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(69, 165, 230, 231, 4, 'com_content.article.19', 'Joomla! Features', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(70, 165, 232, 233, 4, 'com_content.article.20', 'Joomla! Overview', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(71, 170, 276, 277, 4, 'com_content.article.21', 'JSN Epic Product Tour', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(72, 168, 246, 247, 4, 'com_content.article.22', 'Layout', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(73, 171, 280, 281, 4, 'com_content.article.23', 'Layout variation Center | Innerright | Right ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(74, 171, 282, 283, 4, 'com_content.article.24', 'Layout variation Innerleft | Center | Right ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(75, 171, 284, 285, 4, 'com_content.article.25', 'Layout variation Left | Center | Innerright ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(76, 171, 286, 287, 4, 'com_content.article.26', 'Layout variation Left | Center | Right', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(77, 171, 288, 289, 4, 'com_content.article.27', 'Layout variation Left | Innerleft | Center', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(78, 171, 290, 291, 4, 'com_content.article.28', 'Main content only', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(79, 173, 296, 297, 4, 'com_content.article.29', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(80, 168, 248, 249, 4, 'com_content.article.30', 'Menu Styles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(81, 168, 250, 251, 4, 'com_content.article.31', 'Module Styles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(82, 169, 262, 263, 4, 'com_content.article.32', 'Multilingual Support', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(83, 161, 196, 197, 4, 'com_content.article.33', 'My MySQL database does not support UTF-8. Do I have a problem?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(84, 174, 156, 157, 4, 'com_content.article.34', 'Newsflash 1', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(85, 174, 158, 159, 4, 'com_content.article.35', 'Newsflash 2', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(86, 174, 160, 161, 4, 'com_content.article.36', 'Newsflash 3', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(87, 174, 162, 163, 4, 'com_content.article.37', 'Newsflash 4', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(88, 174, 164, 165, 4, 'com_content.article.38', 'Newsflash 5', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(89, 169, 264, 265, 4, 'com_content.article.39', 'Painless Configuration ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(90, 164, 220, 221, 4, 'com_content.article.40', 'Platforms and Open Standards', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(91, 169, 266, 267, 4, 'com_content.article.41', 'RTL Layout Support', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(92, 164, 222, 223, 4, 'com_content.article.42', 'Support and Documentation', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(93, 166, 240, 241, 4, 'com_content.article.43', 'The Joomla! Community', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(94, 173, 298, 299, 4, 'com_content.article.44', 'Tree Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(95, 157, 152, 153, 4, 'com_content.article.45', 'Welcome to Joomla!', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(96, 161, 198, 199, 4, 'com_content.article.46', 'What are the requirements to run Joomla! 1.5?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(97, 160, 180, 181, 4, 'com_content.article.47', 'What happened to the locale setting?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(98, 161, 200, 201, 4, 'com_content.article.48', 'What is an Uncategorised Article?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(99, 159, 174, 175, 4, 'com_content.article.49', 'What is the difference between Archiving and Trashing an Article? ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(100, 161, 202, 203, 4, 'com_content.article.50', 'What is the FTP layer for?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(101, 162, 214, 215, 4, 'com_content.article.51', 'What is the purpose of the collation selection in the installation screen?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(102, 165, 234, 235, 4, 'com_content.article.52', 'What''s New in 1.5?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(103, 160, 182, 183, 4, 'com_content.article.53', 'Where did the Installers go?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(104, 160, 184, 185, 4, 'com_content.article.54', 'Where did the Mambots go?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(105, 160, 186, 187, 4, 'com_content.article.55', 'Where is the Static Content Item?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(106, 161, 204, 205, 4, 'com_content.article.56', 'Why does Joomla! 1.5 use UTF-8 encoding?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(107, 169, 268, 269, 4, 'com_content.article.57', 'Joomla! 2.5 & Joomla! 3.x Support', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(108, 155, 145, 146, 3, 'com_content.article.58', 'Form Builder', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(109, 155, 147, 148, 3, 'com_content.article.59', 'JSN PowerAdmin - Managing your Joomla website can''t be easier', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(110, 169, 270, 271, 4, 'com_content.article.60', 'Website Mobilizing', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(111, 46, 60, 61, 4, 'com_content.article.61', 'Module Styles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(112, 46, 62, 63, 4, 'com_content.article.62', 'Typography', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(113, 46, 64, 65, 4, 'com_content.article.63', 'Menu Styles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(114, 46, 66, 67, 4, 'com_content.article.64', 'Color Variations', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(115, 46, 68, 69, 4, 'com_content.article.65', 'Layout', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(116, 48, 74, 75, 4, 'com_content.article.66', 'JSN Epic Showcase', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(117, 48, 76, 77, 4, 'com_content.article.67', 'Introducing JSN Epic', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(118, 49, 80, 81, 4, 'com_content.article.68', 'Main content only', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(119, 49, 82, 83, 4, 'com_content.article.69', 'Layout variation Innerleft | Center | Right ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(120, 49, 84, 85, 4, 'com_content.article.70', 'Layout variation Center | Innerright | Right ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(121, 49, 86, 87, 4, 'com_content.article.71', 'Layout variation Left | Center | Innerright ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(122, 49, 88, 89, 4, 'com_content.article.72', 'Layout variation Left | Innerleft | Center', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(123, 49, 90, 91, 4, 'com_content.article.73', 'Layout variation Left | Center | Right', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(124, 51, 128, 129, 4, 'com_content.article.74', 'Side Menu RTL', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(125, 51, 130, 131, 4, 'com_content.article.75', 'Tree Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(126, 51, 132, 133, 4, 'com_content.article.76', 'Top Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(127, 51, 134, 135, 4, 'com_content.article.77', 'Side Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(128, 51, 136, 137, 4, 'com_content.article.78', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(129, 50, 94, 95, 4, 'com_content.article.79', 'Thank you for doing a good job', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(130, 50, 96, 97, 4, 'com_content.article.80', 'No words to describe this wonderful product', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(131, 50, 98, 99, 4, 'com_content.article.81', 'Love your tech support', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(132, 50, 100, 101, 4, 'com_content.article.82', 'Keep up the good work', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(133, 50, 102, 103, 4, 'com_content.article.83', 'Just what I have been looking for', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(134, 50, 104, 105, 4, 'com_content.article.84', 'JSN Epic DEV', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(135, 50, 106, 107, 4, 'com_content.article.85', 'JSN Epic and JSN ImageShow', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(136, 50, 108, 109, 4, 'com_content.article.86', 'JoomlaShine Dedicated support', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(137, 50, 110, 111, 4, 'com_content.article.87', 'I love your products', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(138, 50, 112, 113, 4, 'com_content.article.88', 'I had looked at a lot of templates', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(139, 50, 114, 115, 4, 'com_content.article.89', 'Im happy and satisfied', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(140, 50, 116, 117, 4, 'com_content.article.90', 'Great product support and documentation', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(141, 50, 118, 119, 4, 'com_content.article.91', 'Great job JoomlaShine Team', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(142, 50, 120, 121, 4, 'com_content.article.92', 'Good products', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(143, 50, 122, 123, 4, 'com_content.article.93', 'Excellent support', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(144, 50, 124, 125, 4, 'com_content.article.94', 'After spending a lot of Dollars', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(145, 7, 22, 23, 2, 'com_contact.category.26', 'Contacts', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(146, 3, 6, 7, 2, 'com_banners.category.27', 'Promo', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(147, 42, 52, 53, 4, 'com_content.article.95', 'What is the difference between Archiving and Trashing an Article? ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(148, 40, 44, 45, 4, 'com_content.article.96', 'Can Joomla! 1.5 operate with PHP Safe Mode On?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(149, 40, 46, 47, 4, 'com_content.article.97', 'How do I install Joomla! 1.5?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(150, 8, 140, 141, 2, 'com_content.category.1', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(155, 8, 142, 149, 2, 'com_content.category.32', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(156, 8, 150, 167, 2, 'com_content.category.33', 'News', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(157, 156, 151, 154, 3, 'com_content.category.34', 'Latest', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(158, 8, 168, 217, 2, 'com_content.category.35', 'FAQs', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(159, 158, 169, 176, 3, 'com_content.category.36', 'New to Joomla!', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(160, 158, 177, 188, 3, 'com_content.category.37', 'Current Users', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(161, 158, 189, 206, 3, 'com_content.category.38', 'General', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(162, 158, 207, 216, 3, 'com_content.category.39', 'Languages', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(163, 8, 218, 243, 2, 'com_content.category.40', 'About Joomla!', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(164, 163, 219, 224, 3, 'com_content.category.41', 'The Project', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(165, 163, 225, 236, 3, 'com_content.category.42', 'The CMS', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(166, 163, 237, 242, 3, 'com_content.category.43', 'The Community', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(167, 8, 244, 301, 2, 'com_content.category.44', 'Template Details', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(168, 167, 245, 252, 3, 'com_content.category.45', 'Design & Features', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(169, 167, 253, 272, 3, 'com_content.category.46', 'Advanced Stuff', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(170, 167, 273, 278, 3, 'com_content.category.47', 'General', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(171, 167, 279, 292, 3, 'com_content.category.48', 'Layout Variations', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(172, 167, 293, 294, 3, 'com_content.category.49', 'Testimonials', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(173, 167, 295, 300, 3, 'com_content.category.50', 'Menu Styles', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(174, 156, 155, 166, 3, 'com_content.category.51', 'Newsflash', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(175, 3, 8, 9, 2, 'com_banners.category.52', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(176, 3, 10, 11, 2, 'com_banners.category.53', 'Promo', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(177, 1, 764, 765, 1, 'com_poweradmin', 'poweradmin', '{}'),
(178, 1, 766, 767, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":{"8":1},"core.manage":{"7":1},"core.delete":{"6":1},"core.edit.state":{"6":1,"5":1}}'),
(179, 1, 768, 769, 1, 'com_imageshow', 'imageshow', '{}'),
(180, 1, 770, 771, 1, 'com_uniform', 'uniform', '{}'),
(181, 1, 772, 773, 1, 'com_finder', 'com_finder', '{}'),
(182, 1, 774, 775, 1, 'com_tags', 'com_tags', '{}'),
(183, 1, 776, 777, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(184, 1, 778, 779, 1, 'com_ajax', 'com_ajax', '{}'),
(185, 1, 780, 781, 1, 'com_postinstall', 'com_postinstall', '{}'),
(186, 18, 322, 323, 2, 'com_modules.module.141', 'JSN Imageshow module', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(187, 18, 324, 325, 2, 'com_modules.module.118', 'Top Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(188, 18, 326, 327, 2, 'com_modules.module.143', 'JSN PowerAdmin Quick Icons', ''),
(189, 18, 328, 329, 2, 'com_modules.module.140', 'JSN imageshow Quick Icons', ''),
(190, 1, 782, 783, 1, 'com_mobilize', 'mobilize', '{}'),
(191, 18, 330, 331, 2, 'com_modules.module.116', 'Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(192, 18, 332, 333, 2, 'com_modules.module.94', 'Docs Download', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(193, 18, 334, 335, 2, 'com_modules.module.114', 'Main Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(194, 18, 336, 337, 2, 'com_modules.module.92', 'Why choose JSN Epic?', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(195, 18, 338, 339, 2, 'com_modules.module.147', 'Position "promo"', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(196, 18, 340, 341, 2, 'com_modules.module.148', 'Position "promo-left"', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(197, 18, 342, 343, 2, 'com_modules.module.149', 'Position "promo-right"', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(198, 18, 344, 345, 2, 'com_modules.module.121', 'Native Compatibility', ''),
(199, 18, 346, 347, 2, 'com_modules.module.106', 'Versatile Layout', ''),
(200, 18, 348, 349, 2, 'com_modules.module.108', 'Multiple Module Styles', ''),
(201, 18, 350, 351, 2, 'com_modules.module.84', 'Native RTL Support', ''),
(202, 18, 352, 353, 2, 'com_modules.module.82', 'Easy to start', ''),
(203, 18, 354, 355, 2, 'com_modules.module.83', 'Docs / Support', ''),
(204, 18, 356, 357, 2, 'com_modules.module.150', 'JSN Epic Custom Assets', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(205, 18, 358, 359, 2, 'com_modules.module.151', 'About us', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(206, 18, 360, 361, 2, 'com_modules.module.152', 'Our Services', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(207, 18, 362, 363, 2, 'com_modules.module.153', 'Responsive Intro', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(208, 18, 364, 365, 2, 'com_modules.module.154', 'Our Work', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(209, 18, 366, 367, 2, 'com_modules.module.155', 'Custom Promo', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(210, 18, 368, 369, 2, 'com_modules.module.156', 'Testimonials and Partners', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(211, 18, 370, 371, 2, 'com_modules.module.157', 'JSN Epic Custom Assets', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(212, 18, 372, 373, 2, 'com_modules.module.86', 'JoomlaShine copyright', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(213, 18, 374, 375, 2, 'com_modules.module.80', 'Joomla! Copyright', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(214, 18, 376, 377, 2, 'com_modules.module.136', 'Layout Variations', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(215, 18, 378, 379, 2, 'com_modules.module.158', 'JSN ImageShow', ''),
(216, 18, 380, 381, 2, 'com_modules.module.159', 'JSN UniForm', ''),
(217, 18, 382, 383, 2, 'com_modules.module.160', 'Multilanguage status', ''),
(218, 18, 384, 385, 2, 'com_modules.module.161', 'Joomla Version', ''),
(219, 18, 386, 387, 2, 'com_modules.module.162', 'JSN imageshow Quick Icons', ''),
(220, 18, 388, 389, 2, 'com_modules.module.163', 'JSN PowerAdmin Quick Icons', '');

-- --------------------------------------------------------

--
-- Table structure for table `AM_associations`
--

CREATE TABLE IF NOT EXISTS `AM_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_banner_clients`
--

CREATE TABLE IF NOT EXISTS `AM_banner_clients` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_banner_clients`
--

INSERT INTO `AM_banner_clients` (`id`, `name`, `contact`, `email`, `extrainfo`, `state`, `checked_out`, `checked_out_time`, `metakey`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`) VALUES
(1, 'JoomlaShine', 'Administrator', 'admin@joomlashine.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `AM_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `AM_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_banners`
--

CREATE TABLE IF NOT EXISTS `AM_banners` (
`id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_banners`
--

INSERT INTO `AM_banners` (`id`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `clickurl`, `state`, `catid`, `description`, `custombannercode`, `sticky`, `ordering`, `metakey`, `params`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `reset`, `created`, `language`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `version`) VALUES
(1, 1, 1, 'Product Tour', 'product-tour', 0, 434, 12, 'index.php?option=com_content&view=article&id=21&Itemid=199', 1, 53, '', '<a title="Product Tour" target="_blank" href="index.php?option=com_content&amp;view=article&amp;id=21&amp;Itemid=199"><img alt="Product Tour" src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/banners/product-tour.jpg"/></a>', 0, 1, '', '{"imageurl":"images\\/banners\\/product-tour.jpg","width":"","height":"","alt":""}', 0, '', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-04-29 00:00:00', '2011-03-29 09:33:42', '*', 0, '', '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `AM_categories`
--

CREATE TABLE IF NOT EXISTS `AM_categories` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned DEFAULT NULL,
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_categories`
--

INSERT INTO `AM_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 97, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*', 1),
(32, 155, 1, 53, 54, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 02:59:06', 42, '2011-04-01 01:26:39', 0, '*', 1),
(33, 156, 1, 55, 60, 1, 'news', 'com_content', 'News', 'news', '', 'Select a news topic from the list below, then select a news article to read.', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 02:59:51', 42, '2011-04-01 01:26:49', 0, '*', 1),
(34, 157, 33, 56, 57, 2, 'news/latest', 'com_content', 'Latest', 'latest', '', 'The latest news from the Joomla! Team', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 03:00:44', 0, '0000-00-00 00:00:00', 0, '*', 1),
(35, 158, 1, 61, 70, 1, 'faqs', 'com_content', 'FAQs', 'faqs', '', 'From the list below choose one of our FAQs topics, then select an FAQ to read. If you have a question which is not in this section, please contact us.', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 03:01:15', 0, '0000-00-00 00:00:00', 0, '*', 1),
(36, 159, 35, 62, 63, 2, 'faqs/new-to-joomla', 'com_content', 'New to Joomla!', 'new-to-joomla', '', 'Questions for new users of Joomla!', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 03:01:54', 0, '0000-00-00 00:00:00', 0, '*', 1),
(37, 160, 35, 64, 65, 2, 'faqs/current-users', 'com_content', 'Current Users', 'current-users', '', 'Questions that users migrating to Joomla! 1.5 are likely to raise<br />', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 03:02:14', 0, '0000-00-00 00:00:00', 0, '*', 1),
(38, 161, 35, 66, 67, 2, 'faqs/general', 'com_content', 'General', 'general', '', 'General questions about the Joomla! CMS', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 03:02:40', 0, '0000-00-00 00:00:00', 0, '*', 1),
(39, 162, 35, 68, 69, 2, 'faqs/languages', 'com_content', 'Languages', 'languages', '', 'Questions related to localisation and languages', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 03:03:02', 0, '0000-00-00 00:00:00', 0, '*', 1),
(40, 163, 1, 71, 78, 1, 'about-joomla', 'com_content', 'About Joomla!', 'about-joomla', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 03:03:21', 0, '0000-00-00 00:00:00', 0, '*', 1),
(41, 164, 40, 72, 73, 2, 'about-joomla/the-project', 'com_content', 'The Project', 'the-project', '', 'General facts about Joomla!<br />', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 03:03:46', 0, '0000-00-00 00:00:00', 0, '*', 1),
(42, 165, 40, 74, 75, 2, 'about-joomla/the-cms', 'com_content', 'The CMS', 'the-cms', '', 'Information about the software behind Joomla!<br />', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 03:04:15', 0, '0000-00-00 00:00:00', 0, '*', 1),
(43, 166, 40, 76, 77, 2, 'about-joomla/the-community', 'com_content', 'The Community', 'the-community', '', 'About the millions of Joomla! users and Web sites<br />', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 03:04:36', 0, '0000-00-00 00:00:00', 0, '*', 1),
(44, 167, 1, 79, 92, 1, 'template-details', 'com_content', 'Template Details', 'template-details', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 03:04:48', 0, '0000-00-00 00:00:00', 0, '*', 1),
(45, 168, 44, 80, 81, 2, 'template-details/design-a-features', 'com_content', 'Design & Features', 'design-a-features', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 03:05:09', 0, '0000-00-00 00:00:00', 0, '*', 1),
(46, 169, 44, 82, 83, 2, 'template-details/advanced-stuff', 'com_content', 'Advanced Stuff', 'advanced-stuff', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 03:05:34', 0, '0000-00-00 00:00:00', 0, '*', 1),
(47, 170, 44, 84, 85, 2, 'template-details/general', 'com_content', 'General', 'general', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 03:05:54', 0, '0000-00-00 00:00:00', 0, '*', 1),
(48, 171, 44, 86, 87, 2, 'template-details/layout-variations', 'com_content', 'Layout Variations', 'layout-variations', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 03:13:39', 0, '0000-00-00 00:00:00', 0, '*', 1),
(49, 172, 44, 88, 89, 2, 'template-details/testimonials', 'com_content', 'Testimonials', 'testimonials', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 03:14:03', 0, '0000-00-00 00:00:00', 0, '*', 1),
(50, 173, 44, 90, 91, 2, 'template-details/menu-styles', 'com_content', 'Menu Styles', 'menu-styles', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 03:14:58', 0, '0000-00-00 00:00:00', 0, '*', 1),
(51, 174, 33, 58, 59, 2, 'news/newsflash', 'com_content', 'Newsflash', 'newsflash', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 03:36:23', 0, '0000-00-00 00:00:00', 0, '*', 1),
(52, 175, 1, 93, 94, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 03:53:57', 0, '0000-00-00 00:00:00', 0, '*', 1),
(53, 176, 1, 95, 96, 1, 'promo', 'com_banners', 'Promo', 'promo', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-03-31 03:54:23', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `AM_contact_details`
--

CREATE TABLE IF NOT EXISTS `AM_contact_details` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned DEFAULT NULL,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_contact_details`
--

INSERT INTO `AM_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Name', 'name', 'Position', 'Street', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', '<p>Miscellanous info</p>', 'images/powered_by.png', 'email@email.com', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 42, 26, 1, '', '', '', '', '', '*', '2011-03-29 07:08:12', 42, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `AM_content`
--

CREATE TABLE IF NOT EXISTS `AM_content` (
`id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_content`
--

INSERT INTO `AM_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 0, 'Can Joomla! 1.5 operate with PHP Safe Mode On?', 'can-joomla-15-operate-with-php-safe-mode-on', '<p>Yes it can! This is a significant security improvement.</p><p>The <em>safe mode</em> limits PHP to be able to perform actions only on files/folders who''s owner is the same as PHP is currently using (this is usually ''apache''). As files normally are created either by the Joomla! application or by FTP access, the combination of PHP file actions and the FTP Layer allows Joomla! to operate in PHP Safe Mode.</p>', '', 1, 38, '2011-03-31 03:16:15', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:16:15', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 7, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 0, 'Content Layouts', 'content-layouts', '<p>Joomla! provides plenty of flexibility when displaying your Web content. Whether you are using Joomla! for a blog site, news or a Web site for a company, you''ll find one or more content styles to showcase your information. You can also change the style of content dynamically depending on your preferences. Joomla! calls how a page is laid out a <strong>layout</strong>. Use the guide below to understand which layouts are available and how you might use them. </p> <h2>Content </h2> <p>Joomla! makes it extremely easy to add and display content. All content  is placed where your mainbody tag in your template is located. There are three main types of layouts available in Joomla! and all of them can be customised via parameters. The display and parameters are set in the Menu Item used to display the content your working on. You create these layouts by creating a Menu Item and choosing how you want the content to display.</p> <h3>Blog Layout<br /> </h3> <p>Blog layout will show a listing of all Articles of the selected blog type (Section or Category) in the mainbody position of your template. It will give you the standard title, and Intro of each Article in that particular Category and/or Section. You can customise this layout via the use of the Preferences and Parameters, (See Article Parameters) this is done from the Menu not the Section Manager!</p> <h3>Blog Archive Layout<br /> </h3> <p>A Blog Archive layout will give you a similar output of Articles as the normal Blog Display but will add, at the top, two drop down lists for month and year plus a search button to allow Users to search for all Archived Articles from a specific month and year.</p> <h3>List Layout<br /> </h3> <p>Table layout will simply give you a <em>tabular </em>list<em> </em>of all the titles in that particular Section or Category. No Intro text will be displayed just the titles. You can set how many titles will be displayed in this table by Parameters. The table layout will also provide a filter Section so that Users can reorder, filter, and set how many titles are listed on a single page (up to 50)</p> <h2>Wrapper</h2> <p>Wrappers allow you to place stand alone applications and Third Party Web sites inside your Joomla! site. The content within a Wrapper appears within the primary content area defined by the "mainbody" tag and allows you to display their content as a part of your own site. A Wrapper will place an IFRAME into the content Section of your Web site and wrap your standard template navigation around it so it appears in the same way an Article would.</p> <h2>Content Parameters</h2> <p>The parameters for each layout type can be found on the right hand side of the editor boxes in the Menu Item configuration screen. The parameters available depend largely on what kind of layout you are configuring.</p>', '', 1, 42, '2011-03-31 03:16:46', 42, '', '2011-03-31 03:18:00', 42, 0, '0000-00-00 00:00:00', '2011-03-31 03:16:46', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 53, 'Docs & Support', 'docs-a-support', '\r\n<h3>Documentation</h3>\r\n<p>JSN Epic is equipped with very comprehensive documentation package that will help you with template utilization.</p>\r\n<ul>\r\n<li><h4>Configuration Manual</h4>This PDF document gives you detailed description of every template feature. You can print and use this document as a reference every time you want to configure your template. You also can watch <a href="http://www.youtube.com/playlist?list=PL068EB32BB584F3F7">our play list JoomlaShine Template Configuration</a>. </li>\r\n<li><h4>Customization Manual</h4>This PDF document gives you easy-to-understand instruction how to customize template elements to make it suites you or your client. You also can watch <a href="http://www.youtube.com/playlist?list=PL0B473CA36B16C3FD">our playlist JoomlaShine Template Customization</a>. </li> \r\n</ul>\r\n<p class="content-center"><a class="link-button button-light" href="http://www.joomlashine.com/joomla-templates/jsn-epic-docs.zip"><span class="link-icon jsn-icon-download">Download documentation</span></a></p>\r\n<hr class="line-dots" />\r\n<h3>Support</h3>\r\n<p>When purchasing our products you are backed up with professional and timely support providing via:</p>\r\n<ul>\r\n<li><h4>Support Forum</h4>In the <a href="http://www.joomlashine.com/forum.html">support forum</a> we provide support for everyone who bought the <strong>PRO Edition</strong> of our products. Here you will get support from our support team as well as thousands of active members.</li>\r\n<li><h4>Dedicated Ticket Support</h4><a href="http://www.joomlashine.com/dedicated-support.html">Dedicated Ticket Support</a> is for developers who bought<strong> PRO UNLIMITED Edition </strong>of our products. With ticket support we can investigate the issue in-depth and provide a solution much faster. <strong>12-hour</strong> response time is guaranteed.</p> <p>One more great benefit is that we provide support for all questions related not only to the product, but also to your Joomla! configuration.</li> \r\n</ul>\r\n', '', 1, 46, '2011-03-31 03:17:26', 42, '', '2013-03-14 04:57:41', 42, 0, '0000-00-00 00:00:00', '2011-03-31 03:17:26', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 7, '', '', 1, 41, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 0, 'Does the PDF icon render pictures and special characters?', 'does-the-pdf-icon-render-pictures-and-special-characters', 'Yes! Prior to Joomla! 1.5, only the text values of an Article and only for ISO-8859-1 encoding was allowed in the PDF rendition. With the new PDF library in place, the complete Article including images is rendered and applied to the PDF. The PDF generator also handles the UTF-8 texts and can handle any character sets from any language. The appropriate fonts must be installed but this is done automatically during a language pack installation.', '', 1, 39, '2011-03-31 03:18:37', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:18:37', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 55, 'Easy to Start', 'easy-to-start', '<p>One of the fastest and easiest ways to learn template is to install sample data and start playing with it. JSN Epic provides unique mechanism of installing sample data directly on your current website. Just few steps and the demo website is here.</p>\r\n<h3>Step 1. Setup sample data </h3>\r\n<p>Go to template settings page and click button <strong>"Get started".</strong></p> \r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/easy-start/sampledata-step01.png" border="0" width="600" alt="Run sample data installer" /></p>\r\n<p>There are 2 options for you to choose: <strong>Install sample data directly on your site</strong> or<strong> download the quickstart package and use it as standard Joomla site</strong>.</p>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/easy-start/sampledata-step02.png" border="0" width="600" alt="Download sample data package" /></p>\r\n<p> The installation process would start instantly and you would get the website in less than a minute.</p>\r\n<h3>Step 2. Read template documentation and start playing</h3>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/easy-start/sampledata-check-documentation.png" border="0" width="600" alt="Run sample data installer" /></p>\r\n<p><strong>Done!</strong> Just 2 simple steps and you have sample data installed.</p>\r\n<p>Now it''s time to read documentation and play with the template. You can download documentation package for free.</p>\r\n<ul type="disc">\r\n<li><a class="link-action" href="http://www.joomlashine.com/joomla-templates/jsn-epic-docs.zip">Download documentation package</a>.</li>\r\n', '', 1, 46, '2011-03-31 03:19:15', 42, '', '2013-03-14 04:46:46', 42, 0, '0000-00-00 00:00:00', '2011-03-31 03:19:15', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 6, '', '', 1, 83, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 0, 'Example Pages and Menu Links', 'example-pages-and-menu-links', '<p>This page is an example of content that is <em>Uncategorized</em>; that is, it does not belong to any Section or Category. You will see there is a new Menu in the left column. It shows links to the same content presented in 4 different page layouts.</p><ul><li>Section Blog</li><li>Section Table</li><li> Blog Category</li><li>Category Table</li></ul><p>Follow the links in the <strong>Example Pages</strong> Menu to see some of the options available to you to present all the different types of content included within the default installation of Joomla!.</p><p>This includes Components and individual Articles. These links or Menu Item Types (to give them their proper name) are all controlled from within the <strong><font face="courier new,courier">Menu Manager-&gt;[menuname]-&gt;Menu Items Manager</font></strong>. </p>', '', 1, 32, '2011-03-31 03:19:47', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:19:47', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 0, 'Extensions', 'extensions', '<p>Out of the box, Joomla! does a great job of managing the content needed to make your Web site sing. But for many people, the true power of Joomla! lies in the application framework that makes it possible for developers all around the world to create powerful add-ons that are called <strong>Extensions</strong>. An Extension is used to add capabilities to Joomla! that do not exist in the base core code. Here are just some examples of the hundreds of available Extensions:</p>\n<ul>\n<li>Dynamic form builders</li>\n<li>Business or organisational directories</li>\n<li>Document management</li>\n<li>Image and multimedia galleries</li>\n<li>E-commerce and shopping cart engines</li>\n<li>Forums and chat software</li>\n<li>Calendars</li>\n<li>E-mail newsletters</li>\n<li>Data collection and reporting tools</li>\n<li>Banner advertising systems</li>\n<li>Paid subscription services</li>\n<li>and many, many, more</li>\n</ul>\n<p>You can find more examples over at our ever growing <a href="http://extensions.joomla.org" target="_blank" title="Joomla! Extensions Directory">Joomla! Extensions Directory</a>. Prepare to be amazed at the amount of exciting work produced by our active developer community!</p>\n<p>A useful guide to the Extension site can be found at:<br /><a href="http://extensions.joomla.org/content/view/15/63/" target="_blank" title="Guide to the Joomla! Extension site">http://extensions.joomla.org/content/view/15/63/</a></p>\n<h3>Types of Extensions</h3>\n<p>There are five types of extensions:</p>\n<ul>\n<li>Components</li>\n<li>Modules</li>\n<li>Templates</li>\n<li>Plugins</li>\n<li>Languages</li>\n</ul>\n<p>You can read more about the specifics of these using the links in the Article Index - a Table of Contents (yet another useful feature of Joomla!) - at the top right or by clicking on the <strong>Next </strong>link below.</p>\n<hr title="Components" class="system-pagebreak" />\n<h3><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/stories/ext_com.png" border="0" alt="Component - Joomla! Extension Directory" title="Component - Joomla! Extension Directory" width="17" height="17" /> Components</h3>\n<p>A Component is the largest and most complex of the Extension types.  Components are like mini-applications that render the main body of the  page. An analogy that might make the relationship easier to understand  would be that Joomla! is a book and all the Components are chapters in  the book. The core Article Component (<span style="font-family: ''courier new'', courier;">com_content</span>), for example, is the  mini-application that handles all core Article rendering just as the  core registration Component (<span style="font-family: ''courier new'', courier;">com_user</span>) is the mini-application  that handles User registration.</p>\n<p>Many of Joomla!''s core features are provided by the use of default Components such as:</p>\n<ul>\n<li>Contacts</li>\n<li>Front Page</li>\n<li>News Feeds</li>\n<li>Banners</li>\n<li>Mass Mail</li>\n<li>Polls</li>\n</ul>\n<p>A Component will manage data, set displays, provide functions, and in general can perform any operation that does not fall under the general functions of the core code.</p>\n<p>Components work hand in hand with Modules and Plugins to provide a rich variety of content display and functionality aside from the standard Article and content display. They make it possible to completely transform Joomla! and greatly expand its capabilities.</p>\n<hr title="Modules" class="system-pagebreak" />\n<h3><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/stories/ext_mod.png" border="0" alt="Module - Joomla! Extension Directory" title="Module - Joomla! Extension Directory" width="17" height="17" /> Modules</h3>\n<p>A more lightweight and flexible Extension used for page rendering is a Module. Modules are used for small bits of the page that are generally  less complex and able to be seen across different Components. To  continue in our book analogy, a Module can be looked at as a footnote  or header block, or perhaps an image/caption block that can be rendered  on a particular page. Obviously you can have a footnote on any page but  not all pages will have them. Footnotes also might appear regardless of  which chapter you are reading. Simlarly Modules can be rendered  regardless of which Component you have loaded.</p>\n<p>Modules are like little mini-applets that can be placed anywhere on your site. They work in conjunction with Components in some cases and in others are complete stand alone snippets of code used to display some data from the database such as Articles (Newsflash) Modules are usually used to output data but they can also be interactive form items to input data for example the Login Module or Polls.</p>\n<p>Modules can be assigned to Module positions which are defined in your Template and in the back-end using the Module Manager and editing the Module Position settings. For example, "left" and "right" are common for a 3 column layout.</p>\n<h4>Displaying Modules</h4>\n<p>Each Module is assigned to a Module position on your site. If you wish it to display in two different locations you must copy the Module and assign the copy to display at the new location. You can also set which Menu Items (and thus pages) a Module will display on, you can select all Menu Items or you can pick and choose by holding down the control key and selecting multiple locations one by one in the Modules [Edit] screen</p>\n<p>Note: Your Main Menu is a Module! When you create a new Menu in the Menu Manager you are actually copying the Main Menu Module (<span style="font-family: ''courier new'', courier;">mod_mainmenu</span>) code and giving it the name of your new Menu. When you copy a Module you do not copy all of its parameters, you simply allow Joomla! to use the same code with two separate settings.</p>\n<h4>Newsflash Example</h4>\n<p>Newsflash is a Module which will display Articles from your site in an assignable Module position. It can be used and configured to display one Category, all Categories, or to randomly choose Articles to highlight to Users. It will display as much of an Article as you set, and will show a <em>Read more...</em> link to take the User to the full Article.</p>\n<p>The Newsflash Component is particularly useful for things like Site News or to show the latest Article added to your Web site.</p>\n<hr title="Plugins" class="system-pagebreak" />\n<h3><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/stories/ext_plugin.png" border="0" alt="Plugin - Joomla! Extension Directory" title="Plugin - Joomla! Extension Directory" width="17" height="17" /> Plugins</h3>\n<p>One  of the more advanced Extensions for Joomla! is the Plugin. In previous  versions of Joomla! Plugins were known as Mambots. Aside from changing their name their  functionality has been expanded. A Plugin is a section of code that  runs when a pre-defined event happens within Joomla!. Editors are Plugins, for example, that execute when the Joomla! event <span style="font-family: ''courier new'', courier;">onGetEditorArea</span> occurs. Using a Plugin allows a developer to change  the way their code behaves depending upon which Plugins are installed  to react to an event.</p>\n<hr title="Languages" class="system-pagebreak" />\n<h3><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/stories/ext_lang.png" border="0" alt="Language - Joomla! Extensions Directory" title="Language - Joomla! Extensions Directory" width="17" height="17" /> Languages</h3>\n<p>New  to Joomla! 1.5 and perhaps the most basic and critical Extension is a Language. Joomla! is released with multiple Installation Languages but the base Site and Administrator are packaged in just the one Language <strong>en-GB</strong> - being English with GB spelling for example. To include all the translations currently available would bloat the core package and make it unmanageable for uploading purposes. The Language files enable all the User interfaces both Front-end and Back-end to be presented in the local preferred language. Note these packs do not have any impact on the actual content such as Articles.</p>\n<p>More information on languages is available from the <br /> <a href="http://community.joomla.org/translations.html" target="_blank" title="Joomla! Translation Teams">http://community.joomla.org/translations.html</a></p>', '', 1, 42, '2011-03-31 03:20:22', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:20:22', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 58, 'Image Gallery', 'flash-gallery', '<p>The image gallery you see on this website is the <strong>Free Edition</strong> of another cool product <strong><a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" target="_blank">JSN ImageShow</a></strong> from JoomlaShine.com. This product is shipped with component, module and content plugin, so you can place it anywhere on every website.</p>\r\n<p>On this page you can see how JSN ImageShow is presented as module on top and as plugin in article content. With it, you get smooth experience and consistent performance in all browsers. The JSN ImageShow also support mobile devices normally with JS/HTML version switched automatically when you visit the website.</p>\r\n<p>Currently, JSN ImageShow comes with 6 themes: Theme Classic, Theme Slider, Theme Grid, Theme Carousel, Theme Strip and Theme Flow. More themes will be released in the future.</p>\r\n<div class="content-center">{imageshow sl=2 sc=2 w=650 h=400 /}</div>\r\n<p class="content-center"><em>JSN ImageShow with Theme Classic</em></p>\r\n<div class="content-center">{imageshow sl=2 sc=1 w=640 h=400 /}</div>\r\n<p class="content-center"><em>JSN ImageShow with Theme Slider</em></p>\r\n<div class="content-center" style="padding-left: 30px;">{imageshow sl=2 sc=3 w=650 /}</div>\r\n<p class="content-center" style="clear: both;"><em>JSN ImageShow with Theme Grid</em></p>\r\n<div class="content-center" style="padding-left: 30px;">{imageshow sl=2 sc=4 w=650 /}</div>\r\n<p class="content-center" style="clear: both;"><em>JSN ImageShow with Theme Carousel</em></p>\r\n<div class="content-center" style="padding-left: 30px;">{imageshow sl=2 sc=5 /}</div>\r\n<p class="content-center" style="clear: both;"><em>JSN ImageShow with Theme Strip Vertical</em></p>\r\n<div class="content-center" style="padding-left: 30px;">{imageshow sl=2 sc=6 /}</div>\r\n<p class="content-center" style="clear: both;"><em>JSN ImageShow with Theme Strip Horizontal</em></p>\r\n<div class="content-center" style="padding-left: 30px;">{imageshow sl=2 sc=7  /}</div>\r\n<p class="content-center" style="clear: both;"><em>JSN ImageShow with Theme Flow</em></p>\r\n<h3>Mobile optimized</h3>\r\n<p>For mobile device, we have built special lightweight Javascript version, so you can be absolutely sure about images presentation.</p>\r\n\r\n<div class="grid-layout">\r\n<div>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/flash-gallery/flash-gallery.png" width="320" height="480" alt="Mobile optimized presentation (screenshot made by iPhone)" /></p>\r\n</div>\r\n   <p class="content-center"><em>Mobile optimized presentation (screenshot made by iPhone)</em></p>\r\n</div>\r\n\r\n<p class="text-info">This extension is NOT included in the template package, but you can download it for free. <a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" class="link-action">Read more</a>.</p>', '', 1, 46, '2011-03-31 03:20:55', 42, '', '2013-01-25 10:33:57', 42, 0, '0000-00-00 00:00:00', '2011-03-31 03:20:55', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 15, 5, '', '', 1, 125, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 0, 'Flash Gallery Alternative', 'flash-gallery-alternative', '<a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" target="_blank" style="display: block; height: 300px; background: url(http://demo.joomlashine.com/joomla-templates/jsn_epic/images/extensions/custom-html/jsn-imageshow-promo/jsn-imageshow-promo.jpg) center center no-repeat;"></a>', '', -2, 46, '2011-03-31 03:21:24', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:21:24', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 0, 'How do I install Joomla! 1.5?', 'how-do-i-install-joomla-15', '<p>Installing of Joomla! 1.5 is pretty easy. We assume you have set-up your Web site, and it is accessible with your browser.<br /><br />Download Joomla! 1.5, unzip it and upload/copy the files into the directory you Web site points to, fire up your browser and enter your Web site address and the installation will start.  </p><p>For full details on the installation processes check out the <a href="http://help.joomla.org/content/category/48/268/302" target="_blank" title="Joomla! 1.5 Installation Manual">Installation Manual</a> on the <a href="http://help.joomla.org" target="_blank" title="Joomla! Help Site">Joomla! Help Site</a> where you will also find download instructions for a PDF version too. </p>', '', 1, 38, '2011-03-31 03:21:58', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:21:58', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 0, 'How do I localise Joomla! to my language?', 'how-do-i-localise-joomla-to-my-language', '<h4>General<br /></h4><p>In Joomla! 1.5 all User interfaces can be localised. This includes the installation, the Back-end Control Panel and the Front-end Site.</p><p>The core release of Joomla! 1.5 is shipped with multiple language choices in the installation but, other than English (the default), languages for the Site and Administration interfaces need to be added after installation. Links to such language packs exist below.</p>', '<p>Translation Teams for Joomla! 1.5 may have also released fully localised installation packages where site, administrator and sample data are in the local language. These localised releases can be found in the specific team projects on the <a href="http://extensions.joomla.org/component/option,com_mtree/task,listcats/cat_id,1837/Itemid,35/" target="_blank" title="JED">Joomla! Extensions Directory</a>.</p><h4>How do I install language packs?</h4><ul><li>First download both the admin and the site language packs that you require.</li><li>Install each pack separately using the Extensions-&gt;Install/Uninstall Menu selection and then the package file upload facility.</li><li>Go to the Language Manager and be sure to select Site or Admin in the sub-menu. Then select the appropriate language and make it the default one using the Toolbar button.</li></ul><h4>How do I select languages?</h4><ul><li>Default languages can be independently set for Site and for Administrator</li><li>In addition, users can define their preferred language for each Site and Administrator. This takes affect after logging in.</li><li>While logging in to the Administrator Back-end, a language can also be selected for the particular session.</li></ul><h4>Where can I find Language Packs and Localised Releases?</h4><p><em>Please note that Joomla! 1.5 is new and language packs for this version may have not been released at this time.</em> </p><ul><li><a href="http://joomlacode.org/gf/project/jtranslation/" target="_blank" title="Accredited Translations">The Joomla! Accredited Translations Project</a>  - This is a joint repository for language packs that were developed by teams that are members of the Joomla! Translations Working Group.</li><li><a href="http://extensions.joomla.org/component/option,com_mtree/task,listcats/cat_id,1837/Itemid,35/" target="_blank" title="Translations">The Joomla! Extensions Site - Translations</a>  </li><li><a href="http://community.joomla.org/translations.html" target="_blank" title="Translation Work Group Teams">List of Translation Teams and Translation Partner Sites for Joomla! 1.5</a> </li></ul>', 1, 39, '2011-03-31 03:22:32', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:22:32', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 0, 'How do I remove an Article?', 'how-do-i-remove-an-article', '<p>To completely remove an Article, select the Articles that you want to delete and move them to the Trash. Next, open the Article Trash in the Content Menu and select the Articles you want to delete. After deleting an Article, it is no longer available as it has been deleted from the database and it is not possible to undo this operation.  </p>', '', 1, 36, '2011-03-31 03:23:08', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:23:08', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 0, 'How do I upgrade to Joomla! 1.5 ?', 'how-do-i-upgrade-to-joomla-15-', '<p>Joomla! 1.5 does not provide an upgrade path from earlier versions. Converting an older site to a Joomla! 1.5 site requires creation of a new empty site using Joomla! 1.5 and then populating the new site with the content from the old site. This migration of content is not a one-to-one process and involves conversions and modifications to the content dump.</p> <p>There are two ways to perform the migration:</p>', ' <div id="post_content-107"><li>An automated method of migration has been provided which uses a migrator Component to create the migration dump out of the old site (Mambo 4.5.x up to Joomla! 1.0.x) and a smart import facility in the Joomla! 1.5 Installation that performs required conversions and modifications during the installation process.</li> <li>Migration can be performed manually. This involves exporting the required tables, manually performing required conversions and modifications and then importing the content to the new site after it is installed.</li>  <p></p> <h2><strong> Automated migration</strong></h2>  <p>This is a two phased process using two tools. The first tool is a migration Component named <font face="courier new,courier">com_migrator</font>. This Component has been contributed by Harald Baer and is based on his <strong>eBackup </strong>Component. The migrator needs to be installed on the old site and when activated it prepares the required export dump of the old site''s data. The second tool is built into the Joomla! 1.5 installation process. The exported content dump is loaded to the new site and all conversions and modification are performed on-the-fly.</p> <h3><u> Step 1 - Using com_migrator to export data from old site:</u></h3> <li>Install the <font face="courier new,courier">com_migrator</font> Component on the <u><strong>old</strong></u> site. It can be found at the <a href="http://joomlacode.org/gf/project/pasamioprojects/frs/" target="_blank" title="JoomlaCode">JoomlaCode developers forge</a>.</li> <li>Select the Component in the Component Menu of the Control Panel.</li> <li>Click on the <strong>Dump it</strong> icon. Three exported <em>gzipped </em>export scripts will be created. The first is a complete backup of the old site. The second is the migration content of all core elements which will be imported to the new site. The third is a backup of all 3PD Component tables.</li> <li>Click on the download icon of the particular exports files needed and store locally.</li> <li>Multiple export sets can be created.</li> <li>The exported data is not modified in anyway and the original encoding is preserved. This makes the <font face="courier new,courier">com_migrator</font> tool a recommended tool to use for manual migration as well.</li> <h3><u> Step 2 - Using the migration facility to import and convert data during Joomla! 1.5 installation:</u></h3><p>Note: This function requires the use of the <em><font face="courier new,courier">iconv </font></em>function in PHP to convert encodings. If <em><font face="courier new,courier">iconv </font></em>is not found a warning will be provided.</p> <li>In step 6 - Configuration select the ''Load Migration Script'' option in the ''Load Sample Data, Restore or Migrate Backed Up Content'' section of the page.</li> <li>Enter the table prefix used in the content dump. For example: ''#__'' or ''site2_'' are acceptable values.</li> <li>Select the encoding of the dumped content in the dropdown list. This should be the encoding used on the pages of the old site. (As defined in the _ISO variable in the language file or as seen in the browser page info/encoding/source)</li> <li>Browse the local host and select the migration export and click on <strong>Upload and Execute</strong></li> <li>A success message should appear or alternately a listing of database errors</li> <li>Complete the other required fields in the Configuration step such as Site Name and Admin details and advance to the final step of installation. (Admin details will be ignored as the imported data will take priority. Please remember admin name and password from the old site)</li> <p><u><br /></u></p></div>', 1, 37, '2011-03-31 03:23:37', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:23:37', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 0, 'I installed with my own language, but the Back-end is still in English', 'i-installed-with-my-own-language-but-the-back-end-is-still-in-english', '<p>A lot of different languages are available for the Back-end, but by default this language may not be installed. If you want a translated Back-end, get your language pack and install it using the Extension Installer. After this, go to the Extensions Menu, select Language Manager and make your language the default one. Your Back-end will be translated immediately.</p><p>Users who have access rights to the Back-end may choose the language they prefer in their Personal Details parameters. This is of also true for the Front-end language.</p><p> A good place to find where to download your languages and localised versions of Joomla! is <a href="http://extensions.joomla.org/index.php?option=com_mtree&task=listcats&cat_id=1837&Itemid=35" target="_blank" title="Translations for Joomla!">Translations for Joomla!</a> on JED.</p>', '', 1, 39, '2011-03-31 03:24:07', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:24:07', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 65, 'Introducing JSN Epic', 'introducing-jsn-epic', '<p>JSN Epic is polished, clean looking template designed mainly for corporate websites. Equipped with powerful features this template allows you to present content in whatever way you like. <a href="index.php?option=com_content&amp;view=article&amp;id=22&amp;Itemid=183">Super flexible layout</a>, <a href="index.php?option=com_content&amp;view=article&amp;id=30&amp;Itemid=190">3 menu styles</a> and <a href="index.php?option=com_content&amp;view=article&amp;id=31&amp;Itemid=193">4 modules styles</a> under your management via convenient <a href="index.php?option=com_content&amp;view=article&amp;id=39&amp;Itemid=173">template parameters</a>.</p>\n<p>JSN Epic is distributed in 2 editions: <strong>Free</strong> and <strong>PRO</strong>. This website demonstrates JSN Epic Free edition. For full details about all template features, please <a href="http://www.joomlashine.com/joomla-templates/jsn-epic-docs.zip">download template documentation</a>.</p>\n<p class="content-center">\n<a href="index.php?option=com_content&amp;view=article&amp;id=21&amp;Itemid=199" class="link-action">Take a quick tour</a></p>\n', '', 1, 47, '2011-03-31 03:25:00', 42, '', '2012-10-17 08:20:47', 42, 0, '0000-00-00 00:00:00', '2011-03-31 03:25:00', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"0","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 12, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(16, 0, 'Is it possible to change A Menu Item''s Type?', 'is-it-possible-to-change-a-menu-items-type', '<p>You indeed can change the Menu Item''s Type to whatever you want, even after they have been created. </p><p>If, for instance, you want to change the Blog Section of a Menu link, go to the Control Panel-&gt;Menus Menu-&gt;[menuname]-&gt;Menu Item Manager and edit the Menu Item. Select the <strong>Change Type</strong> button and choose the new style of Menu Item Type from the available list. Thereafter, alter the Details and Parameters to reconfigure the display for the new selection  as you require it.</p>', '', 1, 38, '2011-03-31 03:25:29', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:25:29', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 0, 'Is it useful to install the sample data?', 'is-it-useful-to-install-the-sample-data', 'Well you are reading it right now! This depends on what you want to achieve. If you are new to Joomla! and have no clue how it all fits together, just install the sample data. If you don''t like the English sample data because you - for instance - speak Chinese, then leave it out.', '', 1, 36, '2011-03-31 03:26:01', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:26:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 0, 'Joomla! Facts', 'joomla-facts', '<p>Here are some interesting facts about Joomla!</p><ul><li><span>Over 210,000 active registered Users on the <a href="http://forum.joomla.org" target="_blank" title="Joomla Forums">Official Joomla! community forum</a> and more on the many international community sites.</span><ul><li><span>over 1,000,000 posts in over 200,000 topics</span></li><li>over 1,200 posts per day</li><li>growing at 150 new participants each day!</li></ul></li><li><span>1168 Projects on the JoomlaCode (<a href="http://joomlacode.org/" target="_blank" title="JoomlaCode">joomlacode.org</a> ). All for open source addons by third party developers.</span><ul><li><span>Well over 6,000,000 downloads of Joomla! since the migration to JoomlaCode in March 2007.<br /></span></li></ul></li><li><span>Nearly 4,000 extensions for Joomla! have been registered on the <a href="http://extensions.joomla.org" target="_blank" title="http://extensions.joomla.org">Joomla! Extension Directory</a>  </span></li><li><span>Joomla.org exceeds 2 TB of traffic per month!</span></li></ul>', '', 1, 43, '2011-03-31 03:26:33', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:26:33', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 0, 'Joomla! Features', 'joomla-features', '<h4><font color="#ff6600">Joomla! features:</font></h4> <ul><li>Completely database driven site engines </li><li>News, products, or services sections fully editable and manageable</li><li>Topics sections can be added to by contributing Authors </li><li>Fully customisable layouts including <em>left</em>, <em>center</em>, and <em>right </em>Menu boxes </li><li>Browser upload of images to your own library for use anywhere in the site </li><li>Dynamic Forum/Poll/Voting booth for on-the-spot results </li><li>Runs on Linux, FreeBSD, MacOSX server, Solaris, and AIX', '  </li></ul> <h4>Extensive Administration:</h4> <ul><li>Change order of objects including news, FAQs, Articles etc. </li><li>Random Newsflash generator </li><li>Remote Author submission Module for News, Articles, FAQs, and Links </li><li>Object hierarchy - as many Sections, departments, divisions, and pages as you want </li><li>Image library - store all your PNGs, PDFs, DOCs, XLSs, GIFs, and JPEGs online for easy use </li><li>Automatic Path-Finder. Place a picture and let Joomla! fix the link </li><li>News Feed Manager. Easily integrate news feeds into your Web site.</li><li>E-mail a friend and Print format available for every story and Article </li><li>In-line Text editor similar to any basic word processor software </li><li>User editable look and feel </li><li>Polls/Surveys - Now put a different one on each page </li><li>Custom Page Modules. Download custom page Modules to spice up your site </li><li>Template Manager. Download Templates and implement them in seconds </li><li>Layout preview. See how it looks before going live </li><li>Banner Manager. Make money out of your site.</li></ul>', 1, 42, '2011-03-31 03:27:06', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:27:06', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `AM_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(20, 0, 'Joomla! Overview', 'joomla-overview', '<p>If you''re new to Web publishing systems, you''ll find that Joomla! delivers sophisticated solutions to your online needs. It can deliver a robust enterprise-level Web site, empowered by endless extensibility for your bespoke publishing needs. Moreover, it is often the system of choice for small business or home users who want a professional looking site that''s simple to deploy and use. <em>We do content right</em>.<br /> </p><p>So what''s the catch? How much does this system cost?</p><p> Well, there''s good news ... and more good news! Joomla! 1.5 is free, it is released under an Open Source license - the GNU/General Public License v 2.0. Had you invested in a mainstream, commercial alternative, there''d be nothing but moths left in your wallet and to add new functionality would probably mean taking out a second mortgage each time you wanted something adding!</p><p>Joomla! changes all that ... <br />Joomla! is different from the normal models for content management software. For a start, it''s not complicated. Joomla! has been developed for everybody, and anybody can develop it further. It is designed to work (primarily) with other Open Source, free, software such as PHP, MySQL, and Apache. </p><p>It is easy to install and administer, and is reliable. </p><p>Joomla! doesn''t even require the user or administrator of the system to know HTML to operate it once it''s up and running.</p><p>To get the perfect Web site with all the functionality that you require for your particular application may take additional time and effort, but with the Joomla! Community support that is available and the many Third Party Developers actively creating and releasing new Extensions for the 1.5 platform on an almost daily basis, there is likely to be something out there to meet your needs. Or you could develop your own Extensions and make these available to the rest of the community. </p>', '', 1, 42, '2011-03-31 03:27:39', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:27:39', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(21, 71, 'JSN Epic Product Tour', 'jsn-epic-product-tour', '<h3>Easy to start</h3>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/general/product-tour/slide-easy-start.jpg" alt="Easy to Start" /></p>\r\n<p>One of the fastest and easiest ways to learn template is to install sample data and start playing with it. JSN Epic provides unique mechanism of <strong>installing sample data directly on your current website</strong>. Just few steps and the demo website is here.</p>\r\n<p class="content-center"><a href=index.php?option=com_content&view=article&id=5&Itemid=172" class="link-button button-light"><span class="link-icon jsn-icon-info">More about easy start</span></a></p>\r\n\r\n<h3>Painless Configuration</h3>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/general/product-tour/slide-configuration.jpg" alt="Painless Configuration" /></p>\r\n<p>All JoomlaShine templates can be effortlessly configured by template parameters. In template setting page, you will find <strong>16 template parameters</strong> arranged into logical groups for convenient operation. All parameters are equipped with description text for easier understanding.</p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=39&Itemid=173" class="link-button button-light"><span class="link-icon jsn-icon-info">More about configuration</span></a></p>\r\n\r\n<h3>Flexible layout</h3>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/general/product-tour/slide-layout.jpg" alt="Flexible layout" /></p>\r\n<p>JSN Epic provides <strong>36+ module positions </strong>allowing you to have multiple layout configurations. Module positions are designed in smart way to cover all possible spot where you might want to put content. You can specify width of both overall layout and specific columns conveniently via template parameters.</p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=22&Itemid=183" class="link-button button-light"><span class="link-icon jsn-icon-info">More about layout</span></a></p>\r\n\r\n<h3>Versatile Menu Styles</h3>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/general/product-tour/slide-menu-styles.jpg" alt="Menu Styles" /></p>\r\n<p>JSN Epic provides <strong>3 menu styles</strong> to present your website navigation. The default Joomla! built-in menu module is utilized, so you don''t need to install any external menu modules.</p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=30&Itemid=190" class="link-button button-light"><span class="link-icon jsn-icon-info">More about menu styles</span></a></p>\r\n\r\n<h3>Native RTL Support</h3>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/general/product-tour/slide-rtl-support.jpg" alt="RTL Support" /></p>\r\n<p>All JoomlaShine templates are equipped with <strong>native RTL layout support</strong>. We spent huge amount of time tweaking every tiny details of the template to make it look absolutely awesome in RTL mode. Everything is horizontally-flipped including dropdown main menu and side menu.</p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=41&Itemid=174" class="link-button button-light"><span class="link-icon jsn-icon-info">More about RTL support</span></a></p>\r\n\r\n\r\n<h3>Cool Image Gallery</h3>\r\n{imageshow sl=2 sc=2 max-width=650 h=400 /}\r\n<p>The image gallery you see on this website is another cool product <strong>JSN ImageShow</strong> from JoomlaShine.com. With transition technology applied, you get smooth experience and consistent performance in all browsers.</p>\r\n<p>For mobile device, we have built special lightweight Javascript version, so you can be absolutely sure about images presentation.</p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=8&Itemid=246" class="link-button button-light"><span class="link-icon jsn-icon-info">More about image gallery</span></a></p>\r\n\r\n\r\n<h3>Manage Joomla easily</h3>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/general/product-tour/slide-poweradmin.jpg" alt="JSN PowerAdmin" /></p>\r\n<p>When you install sample data template, you will have one more powerful  extension to manage your Joomla site: <strong>JSN  PowerAdmin</strong>. It provides <strong>s</strong>potlight  search, giving results as you type. When you find the desired  item, just click it to open the edit page.</p>\r\n	JSN PowerAdmin allows you to have full control under your Joomla website in  single screen. You can manipulate elements by using convenient GUI with  drag-n-drop operations</p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=59&Itemid=332" target="_blank" class="link-button button-light"><span class="link-icon jsn-icon-info">More about JSN PowerAdmin</span></a></p>\r\n\r\n\r\n\r\n<h3>Great Docs & Support</h3>\r\n<div style="max-width: 680px; margin: 0px auto; padding: 0 20px 10px; border: 8px solid #EEE; ">\r\n<div class="grid-layout">\r\n<div style="width: 49%; float: left">\r\n<h3>Documentation</h3>\r\n<p>JSN Epic is equipped with comprehensive documentation package that will help you with template utilization.</p>\r\n<ul>\r\n<li><h4>Configuration Manual</h4>This PDF document gives you detailed description of every template feature. You can print and use this document as a reference every time. You also can watch <a href="http://www.youtube.com/playlist?list=PL068EB32BB584F3F7">our play list JoomlaShine Template Configuration</a>. </li>\r\n<li><h4>Customization Manual</h4>This PDF document gives you easy-to-understand instruction how to customize template elements to make it suites you or your client. You also can watch <a href="http://www.youtube.com/playlist?list=PL0B473CA36B16C3FD">our playlist JoomlaShine Template Customization</a>. </li> \r\n</ul>\r\n</div>\r\n<div style="width: 49%; float: right">\r\n<h3>Support</h3>\r\n<p>When purchasing our products you are backed up with professional and timely support providing via:</p>\r\n<ul>\r\n<li><h4>Support Forum</h4>In the <a href="http://www.joomlashine.com/forum.html">support forum</a> we provide support for everyone who bought the <strong>PRO Edition</strong> of our products. Here you will get support from our support team as well as thousands of active members.</li>\r\n<li><h4>Dedicated Ticket Support</h4><a href="http://www.joomlashine.com/dedicated-support.html">Dedicated Ticket Support</a> is for developers who bought<strong> PRO UNLIMITED Edition </strong>of our products. With ticket support we can investigate the issue in-depth and provide a solution much faster. <strong>12-hour</strong> response time is guaranteed.</p> </li>\r\n</ul>\r\n</div>\r\n</div>\r\n<p class="content-center"><br /><a href="http://www.joomlashine.com/joomla-templates/jsn-epic-docs.zip" class="link-button button-light"><span class="link-icon jsn-icon-download">Download documentation</span></a></p>\r\n</div>\r\n', '', 1, 47, '2011-03-31 03:28:25', 42, '', '2013-03-21 07:25:25', 42, 0, '0000-00-00 00:00:00', '2011-03-31 03:28:25', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 28, 0, '', '', 1, 204, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(22, 72, 'Layout', 'layout', '<h3>Module Positions</h3>\r\n<p>JSN Epic provides <strong>37 module positions</strong> allowing you to have multiple layout configurations. All module positions are collapsible which means if you don''t publish any modules in some position it will not take any blank spaces leaving those for neighbor modules. Some positions are designed to arrange modules inside in horizontal layout which makes it very easy to reorder modules inside it.</p>\r\n<ul><li><a href="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/design-features/layout/layout-full.png" target="_blank" class="link-action">See all module positions outline</a></li></ul>\r\n<hr class="line-dots" />\r\n<h3>Layout Configuration</h3>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/design-features/layout/params-layout.png" width="600" height="390" alt="Layout configuration by template parameters" /></p>\r\n<p>JSN Epic allows you to change the width size for several critical layout elements. All settings can be done via template parameters in section <strong>LAYOUT SETTINGS</strong>.</p>\r\n<hr class="line-dots" />\r\n<h3>Layout Variations</h3>\r\n<p>JSN Epic layout system is very flexible and capable. Module positions are designed in smart way to cover all possible spot where you might want to put content. More over, you can specify width of both overall layout and specific columns conveniently via template parameters. Bellow is live presentation of some most popular layout variations:</p>\r\n<div class="grid-layout" style="margin-top: 10px">\r\n<div class="content-center">\r\n    	<a href="index.php?option=com_content&view=article&id=28&Itemid=189" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/layout-variations/layout-thumb-mc.png" width="160" height="90" alt="Main content only" /><br />Main content only</a>\r\n	</div>\r\n	<div class="content-center">\r\n    	<a href="index.php?option=com_content&view=article&id=25&Itemid=186" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/layout-variations/layout-thumb-lcir.png" width="160" height="90" alt="Left | Center | InnerRight" /><br />Left | Center | InnerRight</a>\r\n	</div>\r\n	<div class="content-center">\r\n    	<a href="index.php?option=com_content&view=article&id=27&Itemid=185" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/layout-variations/layout-thumb-lilc.png" width="160" height="90" alt="Left | Center | InnerRight" /><br />Left | InnerLeft | Center</a>\r\n	</div>\r\n</div>\r\n<div class="grid-layout" style="margin-top: 10px">\r\n	<div class="content-center">\r\n    	<a href="index.php?option=com_content&view=article&id=26&Itemid=184" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/layout-variations/layout-thumb-lcr.png" width="160" height="90" alt="Left | Center | Right" /><br />Left | Center | Right</a>\r\n    </div>\r\n	<div class="content-center">\r\n    	<a href="index.php?option=com_content&view=article&id=24&Itemid=188" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/layout-variations/layout-thumb-ilcr.png" width="160" height="90" alt="Left | Center | Right" /><br />InnerLeft | Center | Right</a>\r\n	</div>\r\n	<div class="content-center">\r\n    	<a href="index.php?option=com_content&view=article&id=23&Itemid=187" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/layout-variations/layout-thumb-cirr.png" width="160" height="90" alt="Left | Center | Right" /><br />Center | InnerRight | Right</a>\r\n	</div>\r\n</div>', '', 1, 45, '2011-03-31 03:28:55', 42, '', '2014-04-08 03:04:13', 42, 0, '0000-00-00 00:00:00', '2011-03-31 03:28:55', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 14, 2, '', '', 1, 168, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(23, 0, 'Layout variation Center | Innerright | Right ', 'layout-variation-center-innerright-right', '<p>This is  3 columns layout with content presented on the left side, which is typical for blog sites. On right side columns you can  present modules with sumplementary information for main content. The width of side columns can be  adjusted conveniently via template parameters.</p>\n<ul>\n  <li><a href="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/design-features/layout/layout-full.png" target="_blank" class="link-action">See all module positions outline</a></li>\n</ul>\n', '', 1, 48, '2011-03-31 03:29:25', 42, '', '2012-07-24 10:20:20', 43, 0, '0000-00-00 00:00:00', '2011-03-31 03:29:25', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 4, '', '', 1, 32, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(24, 0, 'Layout variation Innerleft | Center | Right ', 'layout-variation-innerleft-center-right', '<p>This is also 3 columns layout with content presented at center, but the left side column was designed to present content of secondary importance comparing to those in right side column. On side columns you can present modules with equal importance. The width of side columns can be adjusted conveniently via template parameters.</p>\n<ul>\n  <li><a href="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/design-features/layout/layout-full.png" target="_blank" class="link-action">See all module positions outline</a></li>\n</ul>\n', '', 1, 48, '2011-03-31 03:29:57', 42, '', '2012-07-24 10:20:28', 43, 0, '0000-00-00 00:00:00', '2011-03-31 03:29:57', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 3, '', '', 1, 32, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(25, 0, 'Layout variation Left | Center | Innerright ', 'layout-variation-left-center-innerright', '<p>This is also 3 columns layout with content presented at center, but the right side column was designed to present content of secondary importance comparing to those in left side column. On side columns you can present modules with equal importance. The width of side columns can be adjusted conveniently via template parameters.</p>\n<ul>\n  <li><a href="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/design-features/layout/layout-full.png" target="_blank" class="link-action">See all module positions outline</a></li>\n</ul>\n', '', 1, 48, '2011-03-31 03:30:25', 42, '', '2012-07-24 10:20:37', 43, 0, '0000-00-00 00:00:00', '2011-03-31 03:30:25', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 2, '', '', 1, 40, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(26, 0, 'Layout variation Left | Center | Right', 'layout-variation-left-center-right', '<p>This is pretty &ldquo;old-fashioned&rdquo; 3 columns layout with content presented at center. On side columns you can present modules with equal importance. The width of side columns can be adjusted conveniently via template parameters.</p>\n<ul><li><a href="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/design-features/layout/layout-full.png" target="_blank" class="link-action">See all module positions outline</a></li></ul>\n', '', 1, 48, '2011-03-31 03:30:55', 42, '', '2012-07-24 10:20:46', 43, 0, '0000-00-00 00:00:00', '2011-03-31 03:30:55', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 1, '', '', 1, 92, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(27, 0, 'Layout variation Left | Innerleft | Center', 'layout-variation-left-innerleft-center', '<p>This is  3 columns layout with content presented on the right side, which is typical for blog sites. On left side columns you can  present modules with sumplementary information for main content. The width of side columns can be  adjusted conveniently via template parameters.</p>\n<ul>\n  <li><a href="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/design-features/layout/layout-full.png" target="_blank" class="link-action">See all module positions outline</a></li>\n</ul>\n', '', 1, 48, '2011-03-31 03:31:23', 42, '', '2012-07-24 10:20:55', 43, 0, '0000-00-00 00:00:00', '2011-03-31 03:31:23', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', '', 1, 37, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(28, 0, 'Main content only', 'main-content-only', '<p>Here you can see how content are presented only in main content area. Sometimes, you will need a lot of space to present content and that how it will looks like.</p>\n<ul><li><a href="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/design-features/layout/layout-full.png" target="_blank" class="link-action">See all module positions outline</a></li></ul>\n<h3>RTL Layout</h3>\n<p>All JoomlaShine templates are equipped with RTL layout support. We spent huge amount of time tweaking every tiny details of the template to make it look absolutely awesome in RTL mode. Everything is horizontally-flipped including dropdown main menu and side menu.</p>\n<ul>\n <li><a href="index.php?option=com_content&amp;view=article&amp;id=28&amp;Itemid=189&amp;jsn_setdirection=rtl" class="link-action">Switch to RTL layout</a></li>\n <li><a href="index.php?option=com_content&amp;view=article&amp;id=28&amp;Itemid=189&amp;jsn_setdirection=ltr" class="link-action">Switch to Normal layout</a></li>\n</ul>', '', 1, 48, '2011-03-31 03:31:50', 42, '', '2011-07-11 03:45:30', 42, 0, '0000-00-00 00:00:00', '2011-03-31 03:31:50', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 4, 0, '', '', 1, 29, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(29, 0, 'Main Menu', 'main-menu', '<p>Main Menu is very powerful menu built with clean accessible XHTML code structure and effective drop-down submenu panels.</p>\n<h3>Main Menu Rich Text</h3>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/menu-styles/mainmenu/menu-mainmenu-rich.png" alt="Main Menu Rich Text" width="600" height="175" border="0" /></p>\n<p>You can add descriptive text to menu items to make them much clearer.</p>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/menu-styles/mainmenu/menu-mainmenu-rich-settings-j16.png" alt="Main Menu Rich Text Settings" width="600" height="300" border="0" /></p>\n<p>To set up descriptive text, you need to go to menu item settings and add descriptive text to menu itemâ€™s parameter <strong>Link Title Attribute</strong>.</p>', '', 1, 50, '2011-03-31 03:32:21', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:32:21', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 1, '', '', 1, 84, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(30, 0, 'Menu Styles', 'menu-styles', '<p>JSN Epic provides <strong>3 menu styles </strong>to present your website navigation. The default Joomla! built-in menu module <strong>(mod_mainmenu)</strong> is utilized, so you don''t need to install any external menu modules.</p>\n<h3>Main Menu</h3>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/design-features/menu-styles/menu-mainmenu-submenus.png" alt="Main Menu" width="600" height="300" border="0" /></p>\n<p>Main Menu is very powerful menu built with clean accessible XHTML code structure and effective drop-down submenu panels.</p>\n<h4>Main Menu with rich text</h4>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/design-features/menu-styles/menu-mainmenu-rich.png" alt="Main Menu with rich text" width="600" height="175" border="0" /></p>\n<p>You can add icon and descriptive text to each menu item to make them much clearer and more  appealing. Both descriptive text and icons are configured directly in menu item settings page, which is very convenient.</p>\n<p class="content-center"><span class="link-button button-light"><a href="index.php?option=com_content&amp;view=article&amp;id=29&amp;Itemid=191" class="link-action">See live demo of Main Menu</a></span></p>\n<hr class="line-dots" />\n<h3>Tree Menu</h3>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/design-features/menu-styles/menu-treemenu.png" alt="" width="600" height="300" border="0" /></p>\n<p>Tree Menu represents menu items in clear tree-like hierarchy, which is very appropriate for indexing menu. By default all submenu items are collapsed until you select the parent menu item.</p>\n<p class="content-center"><span class="link-button button-light"><a href="index.php?option=com_content&amp;view=article&amp;id=44&amp;Itemid=192" class="link-action">See live demo of Tree Menu</a></span></p>\n<hr class="line-dots" />\n<h3>Div Menu</h3>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/design-features/menu-styles/menu-divmenu.png" alt="Div Menu" width="600" height="175" border="0" /></p>\n<p>Div Menu is simple yet nice menu bar with items separated by slightly visible dashes. This menu is very suitable for footer navigation presentation.</p>', '', 1, 45, '2011-03-31 03:32:57', 42, '', '2011-07-11 04:08:49', 42, 0, '0000-00-00 00:00:00', '2011-03-31 03:32:57', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 9, 1, '', '', 1, 98, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(31, 0, 'Module Styles', 'module-styles', '<p>JSN Epic provides <strong>2 box designs</strong> for module background styling in Free edition and <strong>4 box designs</strong> in PRO edition. Module styles are configured by module''s parameter <strong>Module Class Suffix</strong> with very simple syntax.</p>\n<p>Take a look around to see how module styles are applied.</p>', '', 1, 45, '2011-03-31 03:33:27', 42, '', '2011-05-05 09:45:38', 42, 0, '0000-00-00 00:00:00', '2011-03-31 03:33:27', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, '', '', 1, 105, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(32, 0, 'Multilingual Support', 'multilingual-support', '<p>In our templates all wordings of both back-end and front-end are moved to separated language files, so you can easily translate them into any language you want.</p>\n<p>Currently our templates support <strong>more then 10 languages</strong> and more to be come in future.</p>\n<div class="content-center">\n<p>\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/multilingual-support/seo-lang-en.png" border="0" alt="English support" width="600" height="250" /><br />\n<strong>English</strong> <br />\n\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/multilingual-support/seo-lang-de.png" border="0" alt="German support" width="600" height="250" /><br />\n<strong>German</strong> <br />\n\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/multilingual-support/seo-lang-nl.png" border="0" alt="Dutch support" width="600" height="250" /><br />\n<strong>Dutch</strong> <br />\n\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/multilingual-support/seo-lang-it.png" border="0" alt="Italian support" width="600" height="250" /><br />\n<strong>Italian</strong> <br />\n\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/multilingual-support/seo-lang-es.png" border="0" alt="Spanish support" width="600" height="250" /><br />\n<strong>Spanish</strong> <br />\n\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/multilingual-support/seo-lang-fr.png" border="0" alt="French support" width="600" height="250" /><br />\n<strong>French</strong> <br />\n\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/multilingual-support/seo-lang-ja.png" border="0" alt="Japanese support" width="600" height="250" /><br />\n<strong>Japanese</strong> <br />\n\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/multilingual-support/seo-lang-da.png" border="0" alt="Danish support" width="600" height="250" /><br />\n<strong>Danish</strong> <br />\n\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/multilingual-support/seo-lang-ru.png" border="0" alt="Russian support" width="600" height="250" /><br />\n<strong>Russian</strong> <br />\n\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/multilingual-support/seo-lang-pl.png" border="0" alt="Polish support" width="600" height="250" /><br />\n<strong>Polish</strong> <br />\n\n</p>\n</div>', '', 1, 46, '2011-03-31 03:33:57', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:33:57', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 4, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(33, 0, 'My MySQL database does not support UTF-8. Do I have a problem?', 'my-mysql-database-does-not-support-utf-8-do-i-have-a-problem', 'No you don''t. Versions of MySQL lower than 4.1 do not have built in UTF-8 support. However, Joomla! 1.5 has made provisions for backward compatibility and is able to use UTF-8 on older databases. Let the installer take care of all the settings and there is no need to make any changes to the database (charset, collation, or any other).', '', 1, 38, '2011-03-31 03:34:27', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:34:27', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(34, 0, 'Newsflash 1', 'newsflash-1', '<p>Joomla! makes it easy to launch a Web site of any kind. Whether you want a brochure site or you are building a large online community, Joomla! allows you to deploy a new site in minutes and add extra functionality as you need it. The hundreds of available Extensions will help to expand your site and allow you to deliver new services that extend your reach into the Internet.</p>', '', 1, 51, '2011-03-31 03:36:56', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:36:56', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(35, 0, 'Newsflash 2', 'newsflash-2', '<p>The one thing about a Web site, it always changes! Joomla! makes it easy to add Articles, content, images, videos, and more. Site administrators can edit and manage content ''in-context'' by clicking the ''Edit'' link. Webmasters can also edit content through a graphical Control Panel that gives you complete control over your site.</p>', '', 1, 51, '2011-03-31 03:37:22', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:37:22', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(36, 0, 'Newsflash 3', 'newsflash-3', '<p>With a library of thousands of free <a href="http://extensions.joomla.org" target="_blank" title="The Joomla! Extensions Directory">Extensions</a>, you can add what you need as your site grows. Don''t wait, look through the <a href="http://extensions.joomla.org/" target="_blank" title="Joomla! Extensions">Joomla! Extensions</a>  library today. </p>', '', 1, 51, '2011-03-31 03:37:49', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:37:49', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(37, 0, 'Newsflash 4', 'newsflash-4', 'Yesterday all servers in the U.S. went out on strike in a bid to get more RAM and better CPUs. A spokes person said that the need for better RAM was due to some fool increasing the front-side bus speed. In future, buses will be told to slow down in residential motherboards.', '', 1, 51, '2011-03-31 03:38:17', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:38:17', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(38, 0, 'Newsflash 5', 'newsflash-5', 'Joomla! 1.5 - ''Experience the Freedom''!. It has never been easier to create your own dynamic Web site. Manage all your content from the best CMS admin interface and in virtually any language you speak.', '', 1, 51, '2011-03-31 03:38:43', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:38:43', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(39, 0, 'Painless Configuration ', 'painless-configuration', '<p>All JoomlaShine templates can be effortlessly configured by template parameters. In template setting page, you will find <strong>16 template parameters</strong> arranged into logical groups for convenient operation.</p>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/painless-configuration/params-preview.png" border="0" alt="Over 40 parameters to pick up" width="600" height="350" /></p>\n<hr class="line-dots" />\n<h3>Set parameters without confusion</h3>\n<p>Most parameters are designed that way that you can simply select options without confusion about what value to define. All parameters are equipped with description text for easier understanding.</p>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/painless-configuration/params-layout.png" border="0" alt="Parameters to control layout dimensions" width="600" height="390" /><br /> <em>Parameters to control layout dimensions</em></p>', '', 1, 46, '2011-03-31 03:39:21', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:39:21', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 3, '', '', 1, 55, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(40, 0, 'Platforms and Open Standards', 'platforms-and-open-standards', '<p class="MsoNormal">Joomla! runs on any platform including Windows, most flavours of Linux, several Unix versions, and the Apple OS/X platform.  Joomla! depends on PHP and the MySQL database to deliver dynamic content.  </p>            <p class="MsoNormal">The minimum requirements are:</p>      <ul><li>Apache 1.x, 2.x and higher</li><li>PHP 4.3 and higher</li><li>MySQL 3.23 and higher</li></ul>It will also run on alternative server platforms such as Windows IIS - provided they support PHP and MySQL - but these require additional configuration in order for the Joomla! core package to be successful installed and operated.', '', 1, 41, '2011-03-31 03:39:52', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:39:52', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(41, 0, 'RTL Layout Support', 'rtl-layout-support', '<p>All JoomlaShine templates are equipped with <strong>native RTL layout support</strong>. We spent huge amount of time tweaking every tiny details of the template to make it look absolutely awesome in RTL mode. Everything is horizontally-flipped including dropdown main menu and side menu.</p>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/rtl-layout-support/layout-rtl.jpg" border="0" alt="RTL layout support" width="600" height="400" /></p>', '', 1, 46, '2011-03-31 03:40:20', 42, '', '2012-07-30 00:30:10', 42, 0, '0000-00-00 00:00:00', '2011-03-31 03:40:20', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 1, '', '', 1, 104, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(42, 0, 'Support and Documentation', 'support-and-documentation', '<h1>Support </h1><p>Support for the Joomla! CMS can be found on several places. The best place to start would be the <a href="http://docs.joomla.org/" target="_blank" title="Joomla! Official Documentation Wiki">Joomla! Official Documentation Wiki</a>. Here you can help yourself to the information that is regularly published and updated as Joomla! develops. There is much more to come too!</p> <p>Of course you should not forget the Help System of the CMS itself. On the <em>topmenu </em>in the Back-end Control panel you find the Help button which will provide you with lots of explanation on features.</p> <p>Another great place would of course be the <a href="http://forum.joomla.org/" target="_blank" title="Forum">Forum</a> . On the Joomla! Forum you can find help and support from Community members as well as from Joomla! Core members and Working Group members. The forum contains a lot of information, FAQ''s, just about anything you are looking for in terms of support.</p> <p>Two other resources for Support are the <a href="http://developer.joomla.org/" target="_blank" title="Joomla! Developer Site">Joomla! Developer Site</a> and the <a href="http://extensions.joomla.org/" target="_blank" title="Joomla! Extensions Directory">Joomla! Extensions Directory</a> (JED). The Joomla! Developer Site provides lots of technical information for the experienced Developer as well as those new to Joomla! and development work in general. The JED whilst not a support site in the strictest sense has many of the Extensions that you will need as you develop your own Web site.</p> <p>The Joomla! Developers and Bug Squad members are regularly posting their blog reports about several topics such as programming techniques and security issues.</p> <h1>Documentation</h1> <p>Joomla! Documentation can of course be found on the <a href="http://docs.joomla.org/" target="_blank" title="Joomla! Official Documentation Wiki">Joomla! Official Documentation Wiki</a>. You can find information for beginners, installation, upgrade, Frequently Asked Questions, developer topics, and a lot more. The Documentation Team helps oversee the wiki but you are invited to contribute content, as well.</p> <p>There are also books written about Joomla! You can find a listing of these books in the <a href="http://shop.joomla.org/" target="_blank" title="Joomla! Shop">Joomla! Shop</a>.</p>', '', 1, 41, '2011-03-31 03:40:58', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:40:58', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `AM_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(43, 0, 'The Joomla! Community', 'the-joomla-community', '<p><strong>Got a question? </strong>With more than 210,000 members, the Joomla! Discussion Forums at <a href="http://forum.joomla.org/" target="_blank" title="Forums">forum.joomla.org</a> are a great resource for both new and experienced users. Ask your toughest questions the community is waiting to see what you''ll do with your Joomla! site.</p><p><strong>Do you want to show off your new Joomla! Web site?</strong> Visit the <a href="http://forum.joomla.org/viewforum.php?f=514" target="_blank" title="Site Showcase">Site Showcase</a>section of our forum.</p><p><strong>Do you want to contribute?</strong></p><p>If you think working with Joomla is fun, wait until you start working on it. We''re passionate about helping Joomla users become contributors. There are many ways you can help Joomla''s development:</p><ul><li>Submit news about Joomla. We syndicate Joomla-related news on <a href="http://news.joomla.org" target="_blank" title="JoomlaConnect">JoomlaConnect<sup>TM</sup></a>. If you have Joomla news that you would like to share with the community, find out how to get connected<a href="http://community.joomla.org/connect.html" target="_blank" title="JoomlaConnect">here</a>.</li><li>Report bugs and request features in our <a href="http://joomlacode.org/gf/project/joomla/tracker/" target="_blank" title="Joomla! developement trackers">trackers</a>. Please read <a href="http://docs.joomla.org/Filing_bugs_and_issues" target="_blank" title="Reporting Bugs">Reporting Bugs</a>, for details on how we like our bug reports served up</li><li>Submit patches for new and/or fixed behaviour. Please read <a href="http://docs.joomla.org/Patch_submission_guidelines" target="_blank" title="Submitting Patches">Submitting Patches</a>, for details on how to submit a patch.</li><li>Join the <a href="http://forum.joomla.org/viewforum.php?f=509" target="_blank" title="Joomla! development forums">developer forums</a> and share your ideas for how to improve Joomla. We''re always open to suggestions, although we''re likely to be sceptical of large-scale suggestions without some code to back it up.</li><li>Join any of the <a href="http://www.joomla.org/about-joomla/the-project/working-groups.html" target="_blank" title="Joomla! working groups">Joomla Working Groups</a> and bring your personal expertise to the Joomla community.</li></ul><p>These are just a few ways you can contribute. See<a href="http://www.joomla.org/about-joomla/contribute-to-joomla.html" target="_blank" title="Contribute">Contribute to Joomla</a>for many more ways.</p>', '', 1, 43, '2011-03-31 03:41:49', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:41:49', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(44, 0, 'Tree Menu', 'tree-menu', '<p>Tree Menu represents menu items in clear tree-like hierarchy, which is very appropriate for indexing menu. By default all submenu items are collapsed until you select the parent menu item.</p>\n<p>To setup Tree Menu you just need to configure module parameter &ldquo;<strong>Menu Class Suffix</strong>&rdquo; appropriately and the menu system will take care of the rest.</p>\n<h3>Tree Menu with Rich Text</h3>\n<p>Tree Menu can present menu items with icons and descriptive text, pretty much like <a href="index.php?option=com_content&amp;view=article&amp;id=29&amp;Itemid=191">Main Menu</a>.</p>\n<p>To setup icons you need to configure menu items appropriately just like Main Menu. There are very detailed instructions in template documentation.</p>', '', 1, 50, '2011-03-31 03:42:20', 42, '', '2011-07-11 04:07:51', 42, 0, '0000-00-00 00:00:00', '2011-03-31 03:42:20', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, '', '', 1, 47, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(45, 0, 'Welcome to Joomla!', 'welcome-to-joomla', '<div align="left"><strong>Joomla! is a free open source framework and content publishing system designed for quickly creating highly interactive multi-language Web sites, online communities, media portals, blogs and eCommerce applications. <br /></strong></div><p><strong><br /></strong><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/stories/powered_by.png" border="0" alt="Joomla! Logo" title="Example Caption" hspace="6" vspace="0" width="165" height="68" align="left" />Joomla! provides an easy-to-use graphical user interface that simplifies the management and publishing of large volumes of content including HTML, documents, and rich media.  Joomla! is used by organisations of all sizes for intranets and extranets and is supported by a community of tens of thousands of users. </p>', 'With a fully documented library of developer resources, Joomla! allows the customisation of every aspect of a Web site including presentation, layout, administration, and the rapid integration with third-party applications.<p>Joomla! now provides more developer power while making the user experience all the more friendly. For those who always wanted increased extensibility, Joomla! 1.5 can make this happen.</p><p>A new framework, ground-up refactoring, and a highly-active development team brings the excitement of ''the next generation CMS'' to your fingertips.  Whether you are a systems architect or a complete ''noob'' Joomla! can take you to the next level of content delivery. ''More than a CMS'' is something we have been playing with as a catchcry because the new Joomla! API has such incredible power and flexibility, you are free to take whatever direction your creative mind takes you and Joomla! can help you get there so much more easily than ever before.</p><p>Thinking Web publishing? Think Joomla!</p>', 1, 34, '2011-03-31 03:42:49', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:42:49', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(46, 0, 'What are the requirements to run Joomla! 1.5?', 'what-are-the-requirements-to-run-joomla-15', '<p>Joomla! runs on the PHP pre-processor. PHP comes in many flavours, for a lot of operating systems. Beside PHP you will need a Web server. Joomla! is optimized for the Apache Web server, but it can run on different Web servers like Microsoft IIS it just requires additional configuration of PHP and MySQL. Joomla! also depends on a database, for this currently you can only use MySQL. </p>Many people know from their own experience that it''s not easy to install an Apache Web server and it gets harder if you want to add MySQL, PHP and Perl. XAMPP, WAMP, and MAMP are easy to install distributions containing Apache, MySQL, PHP and Perl for the Windows, Mac OSX and Linux operating systems. These packages are for localhost installations on non-public servers only.<br />The minimum version requirements are:<br /><ul><li>Apache 1.x or 2.x</li><li>PHP 4.3 or up</li><li>MySQL 3.23 or up</li></ul>For the latest minimum requirements details, see <a href="http://www.joomla.org/about-joomla/technical-requirements.html" target="_blank" title="Joomla! Technical Requirements">Joomla! Technical Requirements</a>.', '', 1, 38, '2011-03-31 03:43:25', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:43:25', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 3, '', '', 1, 17, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(47, 0, 'What happened to the locale setting?', 'what-happened-to-the-locale-setting', 'This is now defined in the Language [<em>lang</em>].xml file in the Language metadata settings. If you are having locale problems such as dates do not appear in your language for example, you might want to check/edit the entries in the locale tag. Note that multiple locale strings can be set and the host will usually accept the first one recognised.', '', 1, 37, '2011-03-31 03:44:29', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:44:29', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 3, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(48, 0, 'What is an Uncategorised Article?', 'what-is-an-uncategorised-article', 'Most Articles will be assigned to a Section and Category. In many cases, you might not know where you want it to appear so put the Article in the <em>Uncategorized </em>Section/Category. The Articles marked as <em>Uncategorized </em>are handled as static content.', '', 1, 38, '2011-03-31 03:45:09', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:45:09', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(49, 0, 'What is the difference between Archiving and Trashing an Article? ', 'what-is-the-difference-between-archiving-and-trashing-an-article', '<p>When you <em>Archive </em>an Article, the content is put into a state which removes it from your site as published content. The Article is still available from within the Control Panel and can be <em>retrieved </em>for editing or republishing purposes. Trashed Articles are just one step from being permanently deleted but are still available until you Remove them from the Trash Manager. You should use Archive if you consider an Article important, but not current. Trash should be used when you want to delete the content entirely from your site and from future search results.  </p>', '', 1, 36, '2011-03-31 03:45:37', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:45:37', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(50, 0, 'What is the FTP layer for?', 'what-is-the-ftp-layer-for', '<p>The FTP Layer allows file operations (such as installing Extensions or updating the main configuration file) without having to make all the folders and files writable. This has been an issue on Linux and other Unix based platforms in respect of file permissions. This makes the site admin''s life a lot easier and increases security of the site.</p><p>You can check the write status of relevent folders by going to ''''Help-&gt;System Info" and then in the sub-menu to "Directory Permissions". With the FTP Layer enabled even if all directories are red, Joomla! will operate smoothly.</p><p>NOTE: the FTP layer is not required on a Windows host/server. </p>', '', 1, 38, '2011-03-31 03:46:09', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:46:09', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(51, 0, 'What is the purpose of the collation selection in the installation screen?', 'what-is-the-purpose-of-the-collation-selection-in-the-installation-screen', 'The collation option determines the way ordering in the database is done. In languages that use special characters, for instance the German umlaut, the database collation determines the sorting order. If you don''t know which collation you need, select the "utf8_general_ci" as most languages use this. The other collations listed are exceptions in regards to the general collation. If your language is not listed in the list of collations it most likely means that "utf8_general_ci is suitable.', '', 1, 39, '2011-03-31 03:46:43', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:46:43', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(52, 0, 'What''s New in 1.5?', 'whats-new-in-15', '<p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>', '<p style="margin-bottom: 0in">In Joomla! 1.5, you''ll notice: </p>    <ul><li>     <p style="margin-bottom: 0in">       Substantially improved usability, manageability, and scalability far beyond the original Mambo foundations</p>   </li><li>     <p style="margin-bottom: 0in"> Expanded accessibility to support internationalisation, double-byte characters and right-to-left support for Arabic, Farsi, and Hebrew languages among others</p>   </li><li>     <p style="margin-bottom: 0in"> Extended integration of external applications through Web services and remote authentication such as the Lightweight Directory Access Protocol (LDAP)</p>   </li><li>     <p style="margin-bottom: 0in"> Enhanced content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination</p>   </li><li>     <p style="margin-bottom: 0in">       A more sustainable and flexible framework for Component and Extension developers</p>   </li><li>     <p style="margin-bottom: 0in">Backward compatibility with previous releases of Components, Templates, Modules, and other Extensions</p></li></ul>', 1, 42, '2011-03-31 03:47:29', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:47:29', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(53, 0, 'Where did the Installers go?', 'where-did-the-installers-go', 'The improved Installer can be found under the Extensions Menu. With versions prior to Joomla! 1.5 you needed to select a specific Extension type when you wanted to install it and use the Installer associated with it, with Joomla! 1.5 you just select the Extension you want to upload, and click on install. The Installer will do all the hard work for you.', '', 1, 37, '2011-03-31 03:48:01', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:48:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(54, 0, 'Where did the Mambots go?', 'where-did-the-mambots-go', '<p>Mambots have been renamed as Plugins. </p><p>Mambots were introduced in Mambo and offered possibilities to add plug-in logic to your site mainly for the purpose of manipulating content. In Joomla! 1.5, Plugins will now have much broader capabilities than Mambots. Plugins are able to extend functionality at the framework layer as well.</p>', '', 1, 37, '2011-03-31 03:48:32', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:48:32', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(55, 0, 'Where is the Static Content Item?', 'where-is-the-static-content-item', '<p>In Joomla! versions prior to 1.5 there were separate processes for creating a Static Content Item and normal Content Items. The processes have been combined now and whilst both content types are still around they are renamed as Articles for Content Items and Uncategorized Articles for Static Content Items. </p><p>If you want to create a static item, create a new Article in the same way as for standard content and rather than relating this to a particular Section and Category just select <span style="font-style: italic">Uncategorized</span> as the option in the Section and Category drop down lists.</p>', '', 1, 37, '2011-03-31 03:49:02', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:49:02', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(56, 0, 'Why does Joomla! 1.5 use UTF-8 encoding?', 'why-does-joomla-15-use-utf-8-encoding', '<p>Well... how about never needing to mess with encoding settings again?</p><p>Ever needed to display several languages on one page or site and something always came up in Giberish?</p><p>With utf-8 (a variant of Unicode) glyphs (character forms) of basically all languages can be displayed with one single encoding setting. </p>', '', 1, 38, '2011-03-31 03:49:35', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-31 03:49:35', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(57, 107, 'Joomla! 2.5 & Joomla! 3.x Support', 'joomla-2-5-joomla-3-x-support', '<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/joomla-25-support/joomla25-3x-promo.jpg" border="0" width="600" height="300" /></p>\r\n<p>JSN Epic is natively compatible with<strong> both Joomla! 2.5 and Joomla! 3.x</strong>. The installation package is compatible with both Joomla CMS.</p>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/joomla-25-support/installation-files.png" border="0" width="600" height="300" /></p>\r\n<p>In Customer Area, you can choose to download appropriate installation file for the Joomla! version you are using.</p>', '', 1, 46, '2012-10-22 09:53:54', 42, '', '2013-05-20 02:54:14', 42, 0, '0000-00-00 00:00:00', '2012-10-22 09:53:54', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 2, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(58, 108, 'Form Builder', 'form-builder', '<p><strong><a href="http://www.joomlashine.com/joomla-extensions/jsn-uniform-details.html">JSN UniForm</a></strong> will bring you the new indulgence since you find out it is the easiest-to-use form extension for your site. Contact us, survey and job application are just some of thousand forms that this single extension can help you to create and control. Besides the intuitive <strong>drag-n-drop operation</strong>, <strong>flexible form presentation</strong> and <strong>multiple pages layout</strong>, JSN UniForm also assists you to deeply understand your collected data with the multiple admins email notification, clean result display or submission filter. </p>\r\n\r\n<p>Below is the survey form created by the <strong>Free Edition</strong> of JSN UniForm. </p>\r\n{uniform form=1/}\r\n\r\n<p class="text-info">This extension is NOT included in the template package, but you can download it for free. <a href="http://www.joomlashine.com/joomla-extensions/jsn-uniform-details.html" class="link-action">Read more</a>.</p>', '', 1, 32, '2012-11-26 03:08:09', 42, '', '2013-01-28 04:30:04', 42, 0, '0000-00-00 00:00:00', '2012-11-26 03:08:09', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 1, '', '', 1, 19, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(59, 109, 'JSN PowerAdmin - Managing your Joomla website can''t be easier', 'jsn-poweradmin-managing-your-joomla-website-can-t-be-easier', '<p><strong>JSN PowerAdmin</strong> makes your Joomla  administration process easy and enjoyable. It allows you to have full control  under your Joomla website in single screen. You can manipulate elements by  using convenient GUI with drag-n-drop operations.</p>\r\n<p align="center"></p>\r\n<h3>Admin Bar</h3>\r\n<p>AdminBar allows you to perform  common actions quickly: Search items, check actions history, manage users and  manage site.<br />\r\n<p align="center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/jsn-poweradmin/admin bar.png" alt="Admin Bar" width="600" height="88" /></p>\r\n<h4>Spotlight Search</h4>\r\n<p>Spotlight Search helps you search items in your website quickly. <br />\r\n<p align="center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/jsn-poweradmin/spotlight search.png" alt="Spotlight Search" width="600" height="261" /></p>\r\n<h3>Site Manager</h3>\r\n<p>Here we go to the coolest feature of this extension: Site Manager. It helps you control the website content  in one place. As you see, it covers Menu, Component and Modules.<br />\r\n<p align="center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/jsn-poweradmin/site manager.png" alt="Site Manager" width="600" height="345" /></p>\r\n<h4>Menu</h4>\r\n<p>Here you can manage your menus. If you want to move items  within a menu, simply drag and drop them. If you want to edit more, left click  on menu items.<br />\r\n<p align="center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/jsn-poweradmin/menu.png" alt="Menu" width="600" height="377" /></p>\r\n<h4>Component</h4>\r\n<p>This section shows you the component of the menu item you  selected. <strong>JSN PowerAdmin</strong> helps you  move the mouse over all elements on the page and configure them with a single  click. The software will automatically adjust all necessary parameters for you<br />\r\n<p align="center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/jsn-poweradmin/component.png" alt="Component" width="600" height="414" /></p>\r\n<h4>Modules</h4>\r\n<p>Here you can manage all Modules  of the current default template. You can drag and drop a module to different  module positions, or simply click on modules and positions to get more editing  options.<br />\r\n<p align="center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/jsn-poweradmin/modules.png" alt="Modules" width="600" height="379" /></p>\r\n<p><strong>JSN PowerAdmin</strong> supports <strong>10  languages</strong>: <em>English, German, Dutch,  French, Russian, Spanish, Portuguese (Portugal), Portuguese (Brazil), Polish  and Japan</em>. It works perfectly with Joomla admin templates: <em>Hathor, Mission Control, Admin Praise Lite, VTEM Admin, Minima and other</em></p>\r\n<p><em><strong>Impressions from Joomla site builders...</strong></em></p>\r\n<p><em>\r\n<blockquote>All I can say is it turbo-charged the admin  area. So many shortcuts, saving hours of clicking and checking. With developers  creating extensions like these, Joomla can only go up. My hat is off to the  Joomlashine team <strong><em>-</em></strong><a href="http://extensions.joomla.org/extensions/reviews/pcbob" target="_blank"> pcbob</a>\r\n  </p>\r\n  <em></em>\r\n</blockquote>\r\n</em>\r\n<p><em>\r\n<blockquote>JSN  PowerAdmin is a great timesaver. It adds drag &amp; drop functionality to menus  and modules. The live search over articles, modules, menus, plug-ins ... is  perfect. You visually can administrate all content elements like release date,  author, category etc. I simply love it! Thank to Joomlashine <strong><em>- </em></strong><a href="http://extensions.joomla.org/extensions/reviews/Herm" target="_blank">Herm</a>\r\n  </p>\r\n</blockquote></em>\r\n<p><em>\r\n<blockquote>The  moment I installed this component I could see the improvements and difference  it makes in managing my site. A hefty percentage of my time in Joomla is spent  switching between sections and finding modules and editing their settings.  Where have you been all my life?<em><strong><em>-</em></strong></em><a href="http://extensions.joomla.org/extensions/reviews/talgans" target="_blank"> talgans</a>\r\n</p>\r\n</blockquote></em>\r\n<p align="center"><a href="http://www.joomlashine.com/joomla-extensions/jsn-poweradmin-details.html" class="link-button button-dark"><span class="link-icon jsn-icon-download">Download Now</span></a></p>\r\n\r\n', '', 1, 32, '2012-12-25 02:31:12', 42, '', '2014-09-24 08:41:23', 42, 0, '0000-00-00 00:00:00', '2012-12-25 02:31:12', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":""}', 3, 0, '', '', 1, 16, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(60, 110, 'Website Mobilizing', 'website-mobilizing', '<style type="text/css">\r\nh3.article-heading {\r\n        font-size: 1.5em;\r\n        text-transform: uppercase;\r\n}\r\n</style>\r\n<div class="text-info" style="background-image: none; padding: 0.8em;">\r\n <p align="center"><strong>JSN Mobilize</strong> comes with both Free and PRO Editions. The <strong>FREE edition</strong> is included in sample data installation package with function limitation. You only can <strong>create 1 mobile template</strong> with limited displaying area.</p>  \r\n <p align="center">Please click on buttons below to see how JSN Mobilize present a website on mobile devices:</p>\r\n  <p align="center"> \r\n<a rel="{handler: ''iframe'', size: {x: 480, y: 640}}" href="http://rc.joomlashine.com/demo/joomla-extensions/jsn-mobilize/j25/index.php?jsn_mobilize_preview=1" class="modal link-tooltip link-button button-blue" style="z-index: 90;">\r\nSmart phones</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n<a rel="{handler: ''iframe'', size: {x: 1024, y:768}}" href="http://rc.joomlashine.com/demo/joomla-extensions/jsn-mobilize/j25/index.php?jsn_mobilize_preview=1" class="modal link-tooltip link-button button-red" style="z-index: 90;">Tablet</a></p>\r\n</div>\r\n\r\n<p align="center">\r\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/jsn-mobilize/img1.jpg" alt="" />\r\n</p>\r\n<p>\r\nJSN Mobilize helps your website to achieve a better browsing experience by creating an elaborated mobile version for the site. This revolutionary extension guarantees to include a bunch of sophisticated features and enhancement while require minimum technical knowledge from users.\r\n</p>\r\n<p>&nbsp;</p>\r\n\r\n<h3 class="article-heading">Multi-device Support</h3>\r\n<p>&nbsp;</p>\r\n<p align="center">\r\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/jsn-mobilize/img2.jpg" alt="" />\r\n</p>\r\n<p>\r\nNot only smartphones are supported by JSN Mobilize, the recent innovation â€“ tablets are also covered. Tablet usually has bigger screen and can receive more displaying area than phone. With JSN Mobilize you will have the separate layouts for phone and tablet which surely deliver the better device coverage for websiteâ€™s mobile version.\r\n</p>\r\n<p>&nbsp;</p>\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<h3 class="article-heading">Multi-OS Support</h3>\r\n<p>&nbsp;</p>\r\n\r\n<p align="center">\r\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/jsn-mobilize/img3.jpg" alt="" />\r\n</p>\r\n<p>\r\nJSN Mobilize delivers the future-ready and mobile-friendly experience to your Joomla website by initiatively supporting multiple operation systems. In short explanation, your website should work and be viewed effortlessly on every screen solution horizontally and vertically. Your website will look awesome automatically on these operation systems (OS) below:</p>\r\n<ul class="list-arrow arrow-blue">\r\n<li>iOS (6.x and below, 7.x)</li>\r\n<li>Android (2.2 - 2.3, 4.x)</li>\r\n<li>Windows Mobile (6.x and below, 7.x, 8.x)</li>\r\n<li>BlackBerry (5.x and below, 6x - 7x, 10x)</li>\r\n<li>Others...</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<h3 class="article-heading">Load Speed Enhancement</h3>\r\n<p>&nbsp;</p>\r\n\r\n<p>\r\nGet the most out of JSN Mobilize with the <strong>Advanced Image Optimization</strong> based on two options including â€œFor the best performanceâ€ or â€œFor the best image qualityâ€. Additionally, the <strong>CSS/JS minify mechanism</strong> allows to compress all files into one single package. By that way, your site load will quickly enough in a limited-bandwidth environment at least <strong>170%</strong>. Below is the speed test by <a href="http://mobitest.akamai.com/" target="_blank">akamai</a>.\r\n</p>\r\n\r\n<p align="center">\r\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/jsn-mobilize/img4.jpg" alt="" title="The loading speed before enabling the image optimization and CSS/JS minify mechanism" class="caption" />\r\n</p>\r\n\r\n<p align="center">\r\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/content/template-details/advanced-stuff/jsn-mobilize/img5.jpg" alt="" title="The loading speed after enabling the image optimization and CSS/JS minify mechanism" class="caption" />\r\n</p>\r\n\r\n<div class="text-info" style="background-image: none; padding: 0.8em;">\r\n<p align="center">Please click on buttons below to check the detailed information about PRO Edition''s features of JSN Mobilize:</p>\r\n  <p align="center"> <a href="http://demo.joomlashine.com/joomla-extensions/jsn-mobilize.html" target="_blank" class="link-button button-green" >See Demo</a>       <a href="http://www.joomlashine.com/joomla-extensions/jsn-mobilize-joomla-mobile-extension.html" target="_blank" class="link-button button-red" >Buy Now</a></p>\r\n</div>', '', 1, 46, '2014-03-04 07:17:23', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-04 07:17:23', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `AM_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `AM_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_content_frontpage`
--

INSERT INTO `AM_content_frontpage` (`content_id`, `ordering`) VALUES
(15, 1),
(67, 2);

-- --------------------------------------------------------

--
-- Table structure for table `AM_content_rating`
--

CREATE TABLE IF NOT EXISTS `AM_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_content_types`
--

CREATE TABLE IF NOT EXISTS `AM_content_types` (
`type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_content_types`
--

INSERT INTO `AM_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(11, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(12, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(13, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(14, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(15, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `AM_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `AM_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `AM_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `AM_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_extensions`
--

CREATE TABLE IF NOT EXISTS `AM_extensions` (
`extension_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=731 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_extensions`
--

INSERT INTO `AM_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"target":"0","save_history":"1","history_limit":5,"count_clicks":"1","icons":1,"link_icons":"","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"0","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"0","show_intro":"1","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"0","targeta":0,"targetb":0,"targetc":0,"float_intro":"right","float_fulltext":"right","category_layout":"_:blog","show_category_title":"1","show_description":"0","show_description_image":"0","maxLevel":"0","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"0","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"-1","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"none","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":""}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer","version":"5.2.6","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{"mediaversion":"e4857bf41080a1d8f019a683779d7f06"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2014-03-09 12:54:48","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2014 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.2.1","description":"LIB_FOF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.15","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.2","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `AM_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"strong_passwords":"1","autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"September 2014","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.6","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(701, 'plg_system_jsntplframework', 'plugin', 'jsntplframework', 'system', 0, 1, 1, 1, '{"name":"plg_system_jsntplframework","type":"plugin","creationDate":"09\\/16\\/2014","author":"JoomlaShine.com","copyright":"Copyright (C) 2012 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"2.2.2","description":"","group":""}', '{"update-check":1414314599}', '', '', 0, '0000-00-00 00:00:00', 9999, 0),
(702, 'jsn_epic_free', 'template', 'jsn_epic_free', '', 0, 1, 1, 0, '{"name":"jsn_epic_free","type":"template","creationDate":"09\\/16\\/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"6.0.7","description":"TPL_JSN_EPIC_FREE_XML_DESCRIPTION","group":"jsntemplate"}', '[]', 'jsntemplate', '', 0, '0000-00-00 00:00:00', 0, 0),
(703, 'plg_system_jsnframework', 'plugin', 'jsnframework', 'system', 0, 1, 1, 1, '{"name":"plg_system_jsnframework","type":"plugin","creationDate":"10/20/2014","author":"JoomlaShine.com","copyright":"Copyright (C) 2013 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"1.4.3","description":"PLG_SYSTEM_JSNFRAMEWORK_XML_DESCRIPTION","group":"","dependency":["poweradmin","uniform","mobilize"]}', '{"poweradmin":"poweradmin","uniform":"uniform","mobilize":"mobilize"}', '["poweradmin","uniform","mobilize"]', '', 0, '0000-00-00 00:00:00', -9999, 0),
(704, 'imageshow', 'component', 'com_imageshow', '', 1, 1, 0, 0, '{"name":"ImageShow","type":"component","creationDate":"09\\/24\\/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"4.8.7","description":"JSN IMAGESHOW FREE","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(705, 'Content - JSN ImageShow', 'plugin', 'imageshow', 'content', 0, 1, 1, 1, '{"name":"Content - JSN ImageShow","type":"plugin","creationDate":"09/24/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"4.8.7","description":"JSN_IMAGESHOW_CONTENT_PLUGIN","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(706, 'System - JSN ImageShow', 'plugin', 'imageshow', 'system', 0, 1, 1, 1, '{"name":"System - JSN ImageShow","type":"plugin","creationDate":"09/24/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"4.8.7","description":"JSN_IMAGESHOW_SYSTEM_PLUGIN","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(707, 'Button - ImageShow', 'plugin', 'imageshow', 'editors-xtd', 0, 1, 1, 1, '{"name":"Button - ImageShow","type":"plugin","creationDate":"09/24/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"4.8.7","description":"PLG_EDITOR_JSN_IMAGESHOW_XML_DESCRIPTION","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(708, 'JSN ImageShow', 'module', 'mod_imageshow', '', 0, 1, 0, 1, '{"name":"JSN ImageShow","type":"module","creationDate":"09/24/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"4.8.7","description":"JSN_MODULE_JSN_IMAGESHOW_MODULE","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(709, 'JSN ImageShow Quick Icons', 'module', 'mod_imageshow_quickicon', '', 1, 1, 2, 1, '{"name":"JSN ImageShow Quick Icons","type":"module","creationDate":"09/24/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"4.8.7","description":"Quick access icon to reach JSN ImageShow Launch Pad","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(710, 'Source Picasa', 'plugin', 'sourcepicasa', 'jsnimageshow', 0, 1, 1, 0, '{"name":"Source Picasa","type":"plugin","creationDate":"09\\/24\\/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.1.7","description":"JSN IMAGESHOW IMAGE SOURCE PICASA","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(711, 'Theme Classic', 'plugin', 'themeclassic', 'jsnimageshow', 0, 1, 1, 0, '{"name":"Theme Classic","type":"plugin","creationDate":"09\\/24\\/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.3.3","description":"JSN IMAGESHOW SHOWCASE THEME CLASSIC PLUGIN","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(712, 'Theme Grid', 'plugin', 'themegrid', 'jsnimageshow', 0, 1, 1, 0, '{"name":"Theme Grid","type":"plugin","creationDate":"09\\/24\\/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.1.5","description":"JSN IMAGESHOW SHOWCASE THEME GRID PLUGIN","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(713, 'Theme Slider', 'plugin', 'themeslider', 'jsnimageshow', 0, 1, 1, 0, '{"name":"Theme Slider","type":"plugin","creationDate":"09\\/24\\/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.2.0","description":"JSN IMAGESHOW SHOWCASE THEME SLIDER PLUGIN","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(714, 'Theme Carousel', 'plugin', 'themecarousel', 'jsnimageshow', 0, 1, 1, 0, '{"name":"Theme Carousel","type":"plugin","creationDate":"09\\/24\\/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.0.9","description":"JSN IMAGESHOW SHOWCASE THEME CAROUSEL PLUGIN","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(715, 'Theme Flow', 'plugin', 'themeflow', 'jsnimageshow', 0, 1, 1, 0, '{"name":"Theme Flow","type":"plugin","creationDate":"09\\/24\\/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.0.7","description":"JSN IMAGESHOW SHOWCASE THEME FLOW PLUGIN","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(716, 'Theme Strip', 'plugin', 'themestrip', 'jsnimageshow', 0, 1, 1, 0, '{"name":"Theme Strip","type":"plugin","creationDate":"09\\/24\\/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.0.8","description":"JSN IMAGESHOW SHOWCASE THEME STRIP PLUGIN","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(717, 'poweradmin', 'component', 'com_poweradmin', '', 1, 1, 0, 0, '{"name":"PowerAdmin","type":"component","creationDate":"10\\/23\\/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"2.1.5","description":"JSN PowerAdmin","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(718, 'System - JSN PowerAdmin', 'plugin', 'jsnpoweradmin', 'system', 0, 1, 1, 1, '{"name":"System - JSN PowerAdmin","type":"plugin","creationDate":"10/23/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.1.5","description":"System - JSN PowerAdmin plugin","group":"","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(719, 'JSN PowerAdmin extended - com_content', 'plugin', 'content', 'jsnpoweradmin', 0, 1, 1, 0, '{"name":"JSN PowerAdmin extended - com_content","type":"plugin","creationDate":"10/23/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.1.5","description":"Support view for com_content in site manager (from PowerAdmin 1.3.0)","group":"","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(720, 'JSN PowerAdmin extended - com_contact', 'plugin', 'contact', 'jsnpoweradmin', 0, 1, 1, 0, '{"name":"JSN PowerAdmin extended - com_contact","type":"plugin","creationDate":"10/23/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.1.5","description":"Support view for com_contact in site manager (from PowerAdmin 2.0)","group":"","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(721, 'JSN PowerAdmin extended - com_users', 'plugin', 'users', 'jsnpoweradmin', 0, 1, 1, 0, '{"name":"JSN PowerAdmin extended - com_users","type":"plugin","creationDate":"10/23/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.1.5","description":"Support view for com_users in site manager (from PowerAdmin 2.0)","group":"","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(722, 'JSN PowerAdmin extended - com_weblinks', 'plugin', 'weblinks', 'jsnpoweradmin', 0, 1, 1, 0, '{"name":"JSN PowerAdmin extended - com_weblinks","type":"plugin","creationDate":"10/23/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.1.5","description":"Support view for com_weblinks in site manager (from PowerAdmin 2.0)","group":"","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(723, 'mod_poweradmin', 'module', 'mod_poweradmin', '', 1, 1, 2, 0, '{"name":"mod_poweradmin","type":"module","creationDate":"10/23/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.1.5","description":"JSN PowerAdmin Quick Icons","group":"","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(724, 'uniform', 'component', 'com_uniform', '', 1, 1, 0, 0, '{"name":"UniForm","type":"component","creationDate":"09\\/20\\/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"3.0.9","description":"JSN UniForm FREE \\u2013 A very simple solution to build forms for your Joomla website.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(725, 'JSN UniForm', 'module', 'mod_uniform', '', 0, 1, 0, 1, '{"name":"JSN UniForm","type":"module","creationDate":"09/20/2014","author":"JoomlaShine.com","copyright":"Copyright (C) 2012 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"3.0.9","description":"JSN_UNIFORM_MODULE_DES","group":"","dependency":["uniform"]}', '{"uniform":"uniform"}', '["uniform"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(726, 'JSN_UNIFORM_PLUGIN_CONTENT_TITLE', 'plugin', 'uniform', 'content', 0, 1, 1, 1, '{"name":"JSN_UNIFORM_PLUGIN_CONTENT_TITLE","type":"plugin","creationDate":"09/20/2014","author":"JoomlaShine.com","copyright":"Copyright (C) 2012 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"3.0.9","description":"JSN_UNIFORM_PLUGIN_CONTENT_DES","group":"","dependency":["uniform"]}', '{"uniform":"uniform"}', '["uniform"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(727, 'JSN_UNIFORM_PLUGIN_BUTTON_TITLE', 'plugin', 'uniform', 'editors-xtd', 0, 1, 1, 1, '{"name":"JSN_UNIFORM_PLUGIN_BUTTON_TITLE","type":"plugin","creationDate":"09/20/2014","author":"JoomlaShine.com","copyright":"Copyright (C) 2012 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"3.0.9","description":"JSN_UNIFORM_PLUGIN_BUTTON_DES","group":"","dependency":["uniform"]}', '{"uniform":"uniform"}', '["uniform"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(728, 'mobilize', 'component', 'com_mobilize', '', 1, 1, 0, 0, '{"name":"Mobilize","type":"component","creationDate":"10\\/23\\/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.1.0","description":"JSN Mobilize","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(729, 'jsn_mobilize', 'template', 'jsn_mobilize', '', 0, 0, 1, 1, '{"name":"jsn_mobilize","type":"template","creationDate":"August 29, 2012","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"1.0.0","description":"TPL_MOBILIZE_XML_DESCRIPTION","group":"","dependency":["mobilize"]}', '{"mobilize":"mobilize"}', '["mobilize"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(730, 'plg_system_jsnmobilize', 'plugin', 'jsnmobilize', 'system', 0, 1, 1, 1, '{"name":"plg_system_jsnmobilize","type":"plugin","creationDate":"10/23/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"1.1.0","description":"PLG_SYSTEM_JSNMOBILIZE_XML_DESCRIPTION","group":"","dependency":["mobilize"]}', '{"mobilize":"mobilize"}', '["mobilize"]', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_filters`
--

CREATE TABLE IF NOT EXISTS `AM_finder_filters` (
`filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_links`
--

CREATE TABLE IF NOT EXISTS `AM_finder_links` (
`link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `AM_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `AM_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `AM_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `AM_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `AM_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `AM_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `AM_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `AM_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `AM_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `AM_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `AM_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `AM_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `AM_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `AM_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `AM_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `AM_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `AM_finder_taxonomy` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_finder_taxonomy`
--

INSERT INTO `AM_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `AM_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_terms`
--

CREATE TABLE IF NOT EXISTS `AM_finder_terms` (
`term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `AM_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_finder_terms_common`
--

INSERT INTO `AM_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `AM_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `AM_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_finder_types`
--

CREATE TABLE IF NOT EXISTS `AM_finder_types` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_imageshow_external_source_picasa`
--

CREATE TABLE IF NOT EXISTS `AM_imageshow_external_source_picasa` (
`external_source_id` int(11) unsigned NOT NULL,
  `external_source_profile_title` varchar(255) DEFAULT NULL,
  `picasa_username` varchar(255) DEFAULT '',
  `picasa_thumbnail_size` char(30) DEFAULT '144',
  `picasa_image_size` char(30) DEFAULT '1024'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_imageshow_external_source_picasa`
--

INSERT INTO `AM_imageshow_external_source_picasa` (`external_source_id`, `external_source_profile_title`, `picasa_username`, `picasa_thumbnail_size`, `picasa_image_size`) VALUES
(1, 'joomlashine', 'joomlashine', '144', '1024');

-- --------------------------------------------------------

--
-- Table structure for table `AM_imageshow_images`
--

CREATE TABLE IF NOT EXISTS `AM_imageshow_images` (
`image_id` int(11) NOT NULL,
  `showlist_id` int(11) NOT NULL,
  `image_extid` varchar(255) DEFAULT NULL,
  `album_extid` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `image_medium` varchar(255) DEFAULT NULL,
  `image_big` text,
  `image_title` varchar(255) DEFAULT NULL,
  `image_description` text,
  `image_link` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `custom_data` tinyint(1) DEFAULT '0',
  `sync` tinyint(1) DEFAULT '0',
  `image_size` varchar(25) DEFAULT NULL,
  `exif_data` text,
  `image_alt_text` text
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_imageshow_images`
--

INSERT INTO `AM_imageshow_images` (`image_id`, `showlist_id`, `image_extid`, `album_extid`, `image_small`, `image_medium`, `image_big`, `image_title`, `image_description`, `image_link`, `ordering`, `custom_data`, `sync`, `image_size`, `exif_data`, `image_alt_text`) VALUES
(9, 2, '5809749154429913618', '5809749151874927265', 'http://lh3.ggpht.com/-Qxq8hRntX3g/UKBgExfryhI/AAAAAAAAB-o/9R3TauViHE4/s144/architecture%252520blue%252520mary%252520axe%252520britain%252520building.jpg', 'http://lh3.ggpht.com/-Qxq8hRntX3g/UKBgExfryhI/AAAAAAAAB-o/9R3TauViHE4/s144/architecture%252520blue%252520mary%252520axe%252520britain%252520building.jpg', 'http://lh3.ggpht.com/-Qxq8hRntX3g/UKBgExfryhI/AAAAAAAAB-o/9R3TauViHE4/s1024/architecture%252520blue%252520mary%252520axe%252520britain%252520building.jpg', '30 St Mary Axe', '30 St Mary Axe, also known as "the Gherkin"Â, is a skyscraperÂ  in London''s financial district completed in December 2003, with height of 180 meters and 41 floors.', 'https://picasaweb.google.com/101560173596944116173/JSNImageShowSampleImagesArchitecture#5809749154429913618', 1, 1, 0, '', 'Canon/Canon EOS 5D Mark II, 1/320, f/9.0, 28mm, ISO-100, no flash', NULL),
(10, 2, '5809749155796473266', '5809749151874927265', 'http://lh3.ggpht.com/-6bVhNB6oeQE/UKBgE2lf1bI/AAAAAAAAB-w/elGx_z5LMhc/s144/architecture%252520monument%252520sky%252520building%252520montreal.jpg', 'http://lh3.ggpht.com/-6bVhNB6oeQE/UKBgE2lf1bI/AAAAAAAAB-w/elGx_z5LMhc/s144/architecture%252520monument%252520sky%252520building%252520montreal.jpg', 'http://lh3.ggpht.com/-6bVhNB6oeQE/UKBgE2lf1bI/AAAAAAAAB-w/elGx_z5LMhc/s1024/architecture%252520monument%252520sky%252520building%252520montreal.jpg', '30 St Mary Axe', 'This is a Roman Catholic basilica and national shrine on the west slope of Mount Royal in Montreal, Quebec. It is Canada''s largest church.', 'https://picasaweb.google.com/101560173596944116173/JSNImageShowSampleImagesArchitecture#5809749155796473266', 2, 1, 0, '', 'Canon/Canon EOS 5D, 1/800, f/4.0, 17mm, ISO-100, no flash', NULL),
(11, 2, '5809749159985003058', '5809749151874927265', 'http://lh4.ggpht.com/-3c_cuq5v9sA/UKBgFGMHujI/AAAAAAAAB-s/0s0NAPHS3HA/s144/architecture-cathedral-church-city.jpg', 'http://lh4.ggpht.com/-3c_cuq5v9sA/UKBgFGMHujI/AAAAAAAAB-s/0s0NAPHS3HA/s144/architecture-cathedral-church-city.jpg', 'http://lh4.ggpht.com/-3c_cuq5v9sA/UKBgFGMHujI/AAAAAAAAB-s/0s0NAPHS3HA/s1024/architecture-cathedral-church-city.jpg', 'York Minster Cathedral', 'York Minster is a cathedral in York, England. It''s one of the world''s most magnificent cathedrals.', 'https://picasaweb.google.com/101560173596944116173/JSNImageShowSampleImagesArchitecture#5809749159985003058', 3, 1, 0, '', 'Canon/Canon EOS 5D Mark II, 1/30, f/11.0, 28mm, ISO-500, no flash', NULL),
(12, 2, '5809749175467659826', '5809749151874927265', 'http://lh6.ggpht.com/-Qen1TiFcviM/UKBgF_3eUjI/AAAAAAAAB-0/zgK5yKVJzdY/s144/bridge%252520sighs%252520cambridge%252520river%252520boat%252520punting%252520people.jpg', 'http://lh6.ggpht.com/-Qen1TiFcviM/UKBgF_3eUjI/AAAAAAAAB-0/zgK5yKVJzdY/s144/bridge%252520sighs%252520cambridge%252520river%252520boat%252520punting%252520people.jpg', 'http://lh6.ggpht.com/-Qen1TiFcviM/UKBgF_3eUjI/AAAAAAAAB-0/zgK5yKVJzdY/s1024/bridge%252520sighs%252520cambridge%252520river%252520boat%252520punting%252520people.jpg', 'Bridge of Sighs', 'The Bridge of Sighs , designed by Henry Hutchinson, is a bridge crosses the River Cam. It''s belong to St John''s College of Cambridge University.', 'https://picasaweb.google.com/101560173596944116173/JSNImageShowSampleImagesArchitecture#5809749175467659826', 4, 1, 0, '', 'Panasonic/DMC-FZ50, 1/200, f/5.6, 7mm, ISO-100, no flash', NULL),
(13, 2, '5809749176329649570', '5809749151874927265', 'http://lh4.ggpht.com/-Svm689BuKh8/UKBgGDE_PaI/AAAAAAAAB-8/-1V8W14KXO0/s144/eiffel.jpg', 'http://lh4.ggpht.com/-Svm689BuKh8/UKBgGDE_PaI/AAAAAAAAB-8/-1V8W14KXO0/s144/eiffel.jpg', 'http://lh4.ggpht.com/-Svm689BuKh8/UKBgGDE_PaI/AAAAAAAAB-8/-1V8W14KXO0/s1024/eiffel.jpg', ' Eiffel Tower', 'The Eiffel Tower, located on the Champ de Mars in Paris, is global cultural icon of France and one of the most typical structures in the world.', 'https://picasaweb.google.com/101560173596944116173/JSNImageShowSampleImagesArchitecture#5809749176329649570', 5, 1, 0, '', 'EASTMAN KODAK COMPANY/KODAK EASYSHARE Z710 ZOOM DIGITAL CAMERA, 1/320, f/4.0, 6mm, ISO-64', NULL),
(14, 2, '5809749182060786210', '5809749151874927265', 'http://lh3.ggpht.com/-4v4oPoHthPs/UKBgGYbZciI/AAAAAAAAB_A/XKcKteruBCU/s144/enormous%252520gate%252520columnar%252520walhalla.jpg', 'http://lh3.ggpht.com/-4v4oPoHthPs/UKBgGYbZciI/AAAAAAAAB_A/XKcKteruBCU/s144/enormous%252520gate%252520columnar%252520walhalla.jpg', 'http://lh3.ggpht.com/-4v4oPoHthPs/UKBgGYbZciI/AAAAAAAAB_A/XKcKteruBCU/s1024/enormous%252520gate%252520columnar%252520walhalla.jpg', 'Enormous GateColumnar Walhalla', 'The Walhalla is a hall of fame that honors famous people in German history The hall is housed in a neo-classical building above the Danube River, Germany.', 'https://picasaweb.google.com/101560173596944116173/JSNImageShowSampleImagesArchitecture#5809749182060786210', 6, 1, 0, '', 'Panasonic/DMC-FZ18, 1/200, f/4.0, 4mm, ISO-100, no flash', NULL),
(15, 2, '5809749190437834146', '5809749151874927265', 'http://lh5.ggpht.com/-u1cDs-M-0_A/UKBgG3opDaI/AAAAAAAAB_U/g7vkQPUlHzo/s144/reichstag%252520berlin%252520cupola%252520glass%252520building%252520glass%252520dome.jpg', 'http://lh5.ggpht.com/-u1cDs-M-0_A/UKBgG3opDaI/AAAAAAAAB_U/g7vkQPUlHzo/s144/reichstag%252520berlin%252520cupola%252520glass%252520building%252520glass%252520dome.jpg', 'http://lh5.ggpht.com/-u1cDs-M-0_A/UKBgG3opDaI/AAAAAAAAB_U/g7vkQPUlHzo/s1024/reichstag%252520berlin%252520cupola%252520glass%252520building%252520glass%252520dome.jpg', 'The Reichstag Dome', 'The Reichstag dome designed by architect Norman Foster is a glass dome constructed on top of the rebuilt Reichstag building in Berlin.', 'https://picasaweb.google.com/101560173596944116173/JSNImageShowSampleImagesArchitecture#5809749190437834146', 7, 1, 0, '', 'SONY/DSC-P200, 1/60, f/2.8, 7mm, ISO-100, no flash', NULL),
(16, 2, '5809749198003611618', '5809749151874927265', 'http://lh3.ggpht.com/-CmjR7J0mgis/UKBgHT0dp-I/AAAAAAAAB_Q/Ylsh5gjiKZo/s144/westminster.jpg', 'http://lh3.ggpht.com/-CmjR7J0mgis/UKBgHT0dp-I/AAAAAAAAB_Q/Ylsh5gjiKZo/s144/westminster.jpg', 'http://lh3.ggpht.com/-CmjR7J0mgis/UKBgHT0dp-I/AAAAAAAAB_Q/Ylsh5gjiKZo/s1024/westminster.jpg', 'Westminster Abbey Church', 'Westminster Abbey is a large Gothic church in London, United Kingdom. This is the place where British royal weddings, coronation and burial site are taken place.', 'https://picasaweb.google.com/101560173596944116173/JSNImageShowSampleImagesArchitecture#5809749198003611618', 8, 1, 0, '', 'Canon/Canon EOS 5D Mark II, 1/80, f/2.0, 24mm, ISO-100, no flash', NULL),
(22, 1, '6052914955382837778', '5540425893564885185', 'https://lh4.googleusercontent.com/-TU-lsKV-Ccs/VABGFQs-UhI/AAAAAAAAEPc/GbHpJf268c8/s144/2.jpg', 'https://lh4.googleusercontent.com/-TU-lsKV-Ccs/VABGFQs-UhI/AAAAAAAAEPc/GbHpJf268c8/s144/2.jpg', 'https://lh4.googleusercontent.com/-TU-lsKV-Ccs/VABGFQs-UhI/AAAAAAAAEPc/GbHpJf268c8/s1024/2.jpg', 'Responsive Design', '<span style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: 17px; text-align: justify; background-color: rgb(255, 255, 255);">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat</span>', 'https://picasaweb.google.com/101560173596944116173/JSNEpicDemoWebsite#6052914955382837778', 2, 1, 0, NULL, '', NULL),
(23, 1, '6052914958993552354', '5540425893564885185', 'https://lh3.googleusercontent.com/-Prwm1_6IoeI/VABGFeJ1c-I/AAAAAAAAEPk/ZngxssXEjks/s144/3.jpg', 'https://lh3.googleusercontent.com/-Prwm1_6IoeI/VABGFeJ1c-I/AAAAAAAAEPk/ZngxssXEjks/s144/3.jpg', 'https://lh3.googleusercontent.com/-Prwm1_6IoeI/VABGFeJ1c-I/AAAAAAAAEPk/ZngxssXEjks/s1024/3.jpg', 'Full Documentation', '<span style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: 17px; text-align: justify; background-color: rgb(255, 255, 255);">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat</span>', 'https://picasaweb.google.com/101560173596944116173/JSNEpicDemoWebsite#6052914958993552354', 3, 1, 0, NULL, '', NULL),
(24, 1, '6052914973966344610', '5540425893564885185', 'https://lh6.googleusercontent.com/-MyUItP923fs/VABGGV7oIaI/AAAAAAAAEPw/xGhGJua2rs4/s144/4.jpg', 'https://lh6.googleusercontent.com/-MyUItP923fs/VABGGV7oIaI/AAAAAAAAEPw/xGhGJua2rs4/s144/4.jpg', 'https://lh6.googleusercontent.com/-MyUItP923fs/VABGGV7oIaI/AAAAAAAAEPw/xGhGJua2rs4/s1024/4.jpg', 'Easy To Start', '<span style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: 17px; text-align: justify; background-color: rgb(255, 255, 255);">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat</span>', 'https://picasaweb.google.com/101560173596944116173/JSNEpicDemoWebsite#6052914973966344610', 4, 1, 0, NULL, '', NULL),
(25, 1, '6052914976925323234', '5540425893564885185', 'https://lh5.googleusercontent.com/-cBD9e-ujo_A/VABGGg9Gj-I/AAAAAAAAEP8/TZGAW2NKCQw/s144/5.jpg', 'https://lh5.googleusercontent.com/-cBD9e-ujo_A/VABGGg9Gj-I/AAAAAAAAEP8/TZGAW2NKCQw/s144/5.jpg', 'https://lh5.googleusercontent.com/-cBD9e-ujo_A/VABGGg9Gj-I/AAAAAAAAEP8/TZGAW2NKCQw/s1024/5.jpg', 'Painless Configuration', '<span style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: 17px; text-align: justify; background-color: rgb(255, 255, 255);">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat</span>', 'https://picasaweb.google.com/101560173596944116173/JSNEpicDemoWebsite#6052914976925323234', 5, 1, 0, NULL, '', NULL),
(26, 1, '6052914984882612562', '5540425893564885185', 'https://lh5.googleusercontent.com/-gww4uN48oDE/VABGG-mRKVI/AAAAAAAAEP4/5qgVuOxkIqs/s144/6.jpg', 'https://lh5.googleusercontent.com/-gww4uN48oDE/VABGG-mRKVI/AAAAAAAAEP4/5qgVuOxkIqs/s144/6.jpg', 'https://lh5.googleusercontent.com/-gww4uN48oDE/VABGG-mRKVI/AAAAAAAAEP4/5qgVuOxkIqs/s1024/6.jpg', 'Various Settings', '<span style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: 17px; text-align: justify; background-color: rgb(255, 255, 255);">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat</span>', 'https://picasaweb.google.com/101560173596944116173/JSNEpicDemoWebsite#6052914984882612562', 6, 1, 0, NULL, '', NULL),
(27, 1, '6052914960968459250', '5540425893564885185', 'https://lh3.googleusercontent.com/-5VWUN3h1Wmk/VABGFlgsI_I/AAAAAAAAEPo/EoFCYL_L_0M/s144/1.jpg', 'https://lh3.googleusercontent.com/-5VWUN3h1Wmk/VABGFlgsI_I/AAAAAAAAEPo/EoFCYL_L_0M/s144/1.jpg', 'https://lh3.googleusercontent.com/-5VWUN3h1Wmk/VABGFlgsI_I/AAAAAAAAEPo/EoFCYL_L_0M/s1024/1.jpg', 'Welcome to JSN Epic', '<span style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; line-height: 17px; text-align: justify; background-color: rgb(255, 255, 255);">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat</span>', 'https://picasaweb.google.com/101560173596944116173/JSNEpicDemoWebsite#6052914960968459250', 1, 1, 0, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `AM_imageshow_log`
--

CREATE TABLE IF NOT EXISTS `AM_imageshow_log` (
`log_id` int(11) unsigned NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `screen` varchar(100) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `time_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_imageshow_showcase`
--

CREATE TABLE IF NOT EXISTS `AM_imageshow_showcase` (
`showcase_id` int(11) unsigned NOT NULL,
  `showcase_title` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `general_overall_width` char(30) DEFAULT NULL,
  `general_overall_height` char(30) DEFAULT NULL,
  `date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_imageshow_showcase`
--

INSERT INTO `AM_imageshow_showcase` (`showcase_id`, `showcase_title`, `published`, `ordering`, `general_overall_width`, `general_overall_height`, `date_created`, `date_modified`) VALUES
(1, 'Frontpage slideshow', 1, 1, '100%', '250', '2011-10-10 04:48:15', '2014-08-29 12:08:31'),
(2, 'Sample Gallery', 1, 2, '100%', '450', '2011-10-10 04:49:15', '2012-11-19 08:11:19'),
(3, 'JSN ImageShow presentation - Theme Grid', 1, 3, '100%', '240', '2012-11-19 09:11:00', '2013-02-01 07:02:47'),
(4, 'Theme Carousel', 1, 4, '100%', '200', '2012-11-26 04:11:53', '2012-11-26 04:11:43'),
(5, 'Theme Strip Vertical', 1, 5, '100%', '400', '2013-01-18 03:01:19', '2013-01-18 03:01:37'),
(6, 'Theme Strip Horizontal', 1, 6, '100%', '390', '2013-01-18 03:01:35', '2014-06-03 07:06:55'),
(7, 'Theme Flow', 1, 7, '100%', '200', '2013-01-18 03:01:58', '2013-02-01 07:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `AM_imageshow_showlist`
--

CREATE TABLE IF NOT EXISTS `AM_imageshow_showlist` (
`showlist_id` int(11) NOT NULL,
  `showlist_title` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `override_title` tinyint(1) DEFAULT '0',
  `override_description` tinyint(1) DEFAULT '0',
  `override_link` tinyint(1) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `access` tinyint(3) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `description` text,
  `showlist_link` text,
  `alter_autid` int(11) DEFAULT '0',
  `date_create` datetime DEFAULT NULL,
  `image_source_type` varchar(45) DEFAULT '',
  `image_source_name` varchar(45) DEFAULT '',
  `image_source_profile_id` int(11) DEFAULT '0',
  `authorization_status` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT '0000-00-00 00:00:00',
  `image_loading_order` char(30) DEFAULT NULL,
  `show_exif_data` char(100) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_imageshow_showlist`
--

INSERT INTO `AM_imageshow_showlist` (`showlist_id`, `showlist_title`, `published`, `override_title`, `override_description`, `override_link`, `ordering`, `access`, `hits`, `description`, `showlist_link`, `alter_autid`, `date_create`, `image_source_type`, `image_source_name`, `image_source_profile_id`, `authorization_status`, `date_modified`, `image_loading_order`, `show_exif_data`) VALUES
(1, 'Main Promo Images', 1, 0, 0, 0, 1, 1, 0, '', 'https://plus.google.com/u/0/?tab=wX#photos/101560173596944116173/albums/5811344002237894145', 0, '2011-10-10 04:52:39', 'external', 'picasa', 4, 0, '0000-00-00 00:00:00', 'forward', 'no'),
(2, 'Sample gallery images', 1, 0, 0, 0, 2, 1, 0, '', '', 0, '2011-10-10 04:53:37', 'external', 'picasa', 2, 0, '0000-00-00 00:00:00', 'forward', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `AM_imageshow_source_profile`
--

CREATE TABLE IF NOT EXISTS `AM_imageshow_source_profile` (
`external_source_profile_id` int(11) NOT NULL,
  `external_source_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_imageshow_source_profile`
--

INSERT INTO `AM_imageshow_source_profile` (`external_source_profile_id`, `external_source_id`) VALUES
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `AM_imageshow_theme_carousel`
--

CREATE TABLE IF NOT EXISTS `AM_imageshow_theme_carousel` (
`theme_id` int(11) unsigned NOT NULL,
  `image_source` char(150) DEFAULT 'thumbnails',
  `image_width` char(150) DEFAULT '',
  `image_height` char(150) DEFAULT '',
  `image_border_thickness` char(150) DEFAULT '5',
  `image_border_color` char(150) DEFAULT '#666666',
  `view_angle` char(150) DEFAULT '0',
  `transparency` char(150) DEFAULT '50',
  `scale` char(150) DEFAULT '35',
  `diameter` char(150) DEFAULT '50',
  `animation_duration` char(150) DEFAULT '0.6',
  `click_action` char(150) DEFAULT 'show_original_image',
  `open_link_in` char(150) DEFAULT 'current_browser',
  `orientation` char(150) DEFAULT 'horizontal',
  `enable_drag_action` char(150) DEFAULT 'no',
  `show_caption` char(150) DEFAULT 'yes',
  `caption_background_color` char(150) DEFAULT '#000000',
  `caption_opacity` char(150) DEFAULT '75',
  `caption_show_title` char(150) DEFAULT 'yes',
  `caption_title_css` text,
  `caption_show_description` char(150) DEFAULT 'yes',
  `caption_description_length_limitation` char(150) DEFAULT '50',
  `caption_description_css` text,
  `navigation_presentation` char(150) DEFAULT 'show',
  `auto_play` char(150) DEFAULT 'no',
  `slide_timing` char(150) DEFAULT '3',
  `pause_on_mouse_over` char(150) DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_imageshow_theme_carousel`
--

INSERT INTO `AM_imageshow_theme_carousel` (`theme_id`, `image_source`, `image_width`, `image_height`, `image_border_thickness`, `image_border_color`, `view_angle`, `transparency`, `scale`, `diameter`, `animation_duration`, `click_action`, `open_link_in`, `orientation`, `enable_drag_action`, `show_caption`, `caption_background_color`, `caption_opacity`, `caption_show_title`, `caption_title_css`, `caption_show_description`, `caption_description_length_limitation`, `caption_description_css`, `navigation_presentation`, `auto_play`, `slide_timing`, `pause_on_mouse_over`) VALUES
(1, 'thumbnails', '', '', '5', '#666666', '0', '39', '35', '50', '0.6', 'show_original_image', 'current_browser', 'horizontal', 'no', 'yes', '#000000', '75', 'yes', 'font-family: Verdana;\nfont-size: 12px;\nfont-weight: bold;\ntext-align: left;\ncolor: #E9E9E9;', 'yes', '50', 'font-family: Arial;\nfont-size: 11px;\nfont-weight: normal;\ntext-align: left;\ncolor: #AFAFAF;', 'show', 'no', '3', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `AM_imageshow_theme_classic_flash`
--

CREATE TABLE IF NOT EXISTS `AM_imageshow_theme_classic_flash` (
`theme_id` int(11) unsigned NOT NULL,
  `imgpanel_presentation_mode` char(30) DEFAULT '0',
  `imgpanel_img_transition_type_fit` char(30) DEFAULT '',
  `imgpanel_img_click_action_fit` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_fit` char(30) DEFAULT 'new-browser',
  `imgpanel_img_transition_type_expand` char(30) DEFAULT '',
  `imgpanel_img_motion_type_expand` char(30) DEFAULT '',
  `imgpanel_img_zooming_type_expand` char(30) DEFAULT 'center',
  `imgpanel_img_click_action_expand` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_expand` char(30) DEFAULT 'new-browser',
  `imgpanel_img_show_image_shadow_fit` char(30) DEFAULT 'yes',
  `imgpanel_bg_type` char(30) DEFAULT '',
  `imgpanel_bg_value` char(255) DEFAULT NULL,
  `imgpanel_show_watermark` char(30) DEFAULT 'no',
  `imgpanel_watermark_path` char(255) DEFAULT NULL,
  `imgpanel_watermark_position` char(30) DEFAULT '',
  `imgpanel_watermark_offset` char(30) DEFAULT NULL,
  `imgpanel_watermark_opacity` char(30) DEFAULT NULL,
  `imgpanel_show_overlay_effect` char(30) DEFAULT 'no',
  `imgpanel_overlay_effect_type` char(30) DEFAULT NULL,
  `imgpanel_show_inner_shawdow` char(30) DEFAULT 'yes',
  `imgpanel_inner_shawdow_color` char(30) DEFAULT NULL,
  `thumbpanel_show_panel` char(30) DEFAULT NULL,
  `thumbpanel_panel_position` char(30) DEFAULT '',
  `thumbpanel_collapsible_position` char(30) DEFAULT 'yes',
  `thumbpanel_thumb_browsing_mode` char(30) DEFAULT '',
  `thumbpanel_show_thumb_status` char(30) DEFAULT 'yes',
  `thumbpanel_active_state_color` char(30) DEFAULT NULL,
  `thumbpanel_presentation_mode` char(30) DEFAULT '',
  `thumbpanel_border` char(30) DEFAULT NULL,
  `thumbpanel_enable_big_thumb` char(30) DEFAULT 'yes',
  `thumbpanel_big_thumb_size` char(30) DEFAULT NULL,
  `thumbpanel_thumb_row` char(30) DEFAULT NULL,
  `thumbpanel_thumb_width` char(30) DEFAULT NULL,
  `thumbpanel_thumb_height` char(30) DEFAULT NULL,
  `thumbpanel_thumb_opacity` char(30) DEFAULT '50',
  `thumbpanel_big_thumb_color` char(30) DEFAULT NULL,
  `thumbpanel_thumb_border` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_panel_color` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_normal_state` char(30) DEFAULT NULL,
  `infopanel_panel_position` char(30) DEFAULT '',
  `infopanel_presentation` char(30) DEFAULT NULL,
  `infopanel_bg_color_fill` char(30) DEFAULT NULL,
  `infopanel_panel_click_action` char(30) DEFAULT NULL,
  `infopanel_open_link_in` char(30) DEFAULT 'new-browser',
  `infopanel_show_title` char(30) DEFAULT 'yes',
  `infopanel_title_css` char(250) DEFAULT NULL,
  `infopanel_show_des` char(30) DEFAULT 'yes',
  `infopanel_des_lenght_limitation` char(30) DEFAULT '',
  `infopanel_des_css` char(250) DEFAULT NULL,
  `infopanel_show_link` char(30) DEFAULT 'no',
  `infopanel_link_css` char(250) DEFAULT NULL,
  `toolbarpanel_panel_position` char(30) DEFAULT '',
  `toolbarpanel_presentation` char(30) DEFAULT '0',
  `toolbarpanel_show_image_navigation` char(30) DEFAULT 'yes',
  `toolbarpanel_slideshow_player` char(30) DEFAULT 'yes',
  `toolbarpanel_show_fullscreen_switcher` char(30) DEFAULT 'yes',
  `toolbarpanel_show_tooltip` char(30) DEFAULT 'no',
  `slideshow_hide_thumb_panel` char(30) DEFAULT 'yes',
  `slideshow_slide_timing` char(50) DEFAULT NULL,
  `slideshow_hide_image_navigation` char(30) DEFAULT 'yes',
  `slideshow_auto_play` char(30) DEFAULT 'no',
  `slideshow_show_status` char(30) DEFAULT 'yes',
  `slideshow_enable_ken_burn_effect` char(30) DEFAULT 'yes',
  `slideshow_looping` char(30) DEFAULT 'yes',
  `general_round_corner_radius` char(30) DEFAULT '',
  `general_border_color` char(30) DEFAULT '',
  `general_background_color` char(30) DEFAULT '',
  `general_border_stroke` char(30) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_imageshow_theme_classic_javascript`
--

CREATE TABLE IF NOT EXISTS `AM_imageshow_theme_classic_javascript` (
`theme_id` int(11) unsigned NOT NULL,
  `imgpanel_presentation_mode` char(30) DEFAULT '0',
  `imgpanel_img_click_action_fit` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_fit` char(30) DEFAULT 'new-browser',
  `imgpanel_img_click_action_expand` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_expand` char(30) DEFAULT 'new-browser',
  `imgpanel_bg_type` char(30) DEFAULT '',
  `imgpanel_bg_value` char(255) DEFAULT NULL,
  `thumbpanel_show_panel` char(30) DEFAULT NULL,
  `thumbpanel_panel_position` char(30) DEFAULT '',
  `thumbpanel_active_state_color` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_normal_state` char(30) DEFAULT NULL,
  `thumbpanel_border` char(30) DEFAULT NULL,
  `thumbpanel_thumb_width` char(30) DEFAULT NULL,
  `thumbpanel_thumb_height` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_panel_color` char(30) DEFAULT NULL,
  `infopanel_panel_position` char(30) DEFAULT '',
  `infopanel_presentation` char(30) DEFAULT NULL,
  `infopanel_bg_color_fill` char(30) DEFAULT NULL,
  `infopanel_panel_click_action` char(30) DEFAULT NULL,
  `infopanel_open_link_in` char(30) DEFAULT 'new-browser',
  `infopanel_show_title` char(30) DEFAULT 'yes',
  `infopanel_title_css` char(250) DEFAULT NULL,
  `infopanel_show_des` char(30) DEFAULT 'yes',
  `infopanel_des_lenght_limitation` char(30) DEFAULT '',
  `infopanel_des_css` char(250) DEFAULT NULL,
  `infopanel_show_link` char(30) DEFAULT 'no',
  `infopanel_link_css` char(250) DEFAULT NULL,
  `toolbarpanel_presentation` char(30) DEFAULT '0',
  `slideshow_slide_timing` char(50) DEFAULT NULL,
  `slideshow_auto_play` char(30) DEFAULT 'no',
  `slideshow_looping` char(30) DEFAULT 'yes',
  `general_round_corner_radius` char(30) DEFAULT '',
  `general_border_color` char(30) DEFAULT '',
  `general_background_color` char(30) DEFAULT '',
  `general_border_stroke` char(30) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_imageshow_theme_classic_javascript`
--

INSERT INTO `AM_imageshow_theme_classic_javascript` (`theme_id`, `imgpanel_presentation_mode`, `imgpanel_img_click_action_fit`, `imgpanel_img_open_link_in_fit`, `imgpanel_img_click_action_expand`, `imgpanel_img_open_link_in_expand`, `imgpanel_bg_type`, `imgpanel_bg_value`, `thumbpanel_show_panel`, `thumbpanel_panel_position`, `thumbpanel_active_state_color`, `thumbpanel_thumnail_normal_state`, `thumbpanel_border`, `thumbpanel_thumb_width`, `thumbpanel_thumb_height`, `thumbpanel_thumnail_panel_color`, `infopanel_panel_position`, `infopanel_presentation`, `infopanel_bg_color_fill`, `infopanel_panel_click_action`, `infopanel_open_link_in`, `infopanel_show_title`, `infopanel_title_css`, `infopanel_show_des`, `infopanel_des_lenght_limitation`, `infopanel_des_css`, `infopanel_show_link`, `infopanel_link_css`, `toolbarpanel_presentation`, `slideshow_slide_timing`, `slideshow_auto_play`, `slideshow_looping`, `general_round_corner_radius`, `general_border_color`, `general_background_color`, `general_border_stroke`) VALUES
(3, 'expand-out', 'no-action', 'new-browser', 'open-image-link', 'new-browser', 'solid-color', '#595959', 'on', 'bottom', '#ff6200', '#ffffff', '2', '60', '40', '#000000', 'top', 'on', '#000000', 'no-action', 'new-browser', 'yes', 'font-family: Verdana;\nfont-size: 12px;\nfont-weight: bold;\ntext-align: left;\ncolor: #E9E9E9;', 'yes', '50', 'font-family: Arial;\nfont-size: 11px;\nfont-weight: normal;\ntext-align: left;\ncolor: #AFAFAF;', 'no', 'font-family: Verdana;\nfont-size: 11px;\nfont-weight: bold;\ntext-align: right;\ncolor: #E06614;', 'auto', '8', 'no', 'yes', '0', '#cccccc', '#efefef', '1');

-- --------------------------------------------------------

--
-- Table structure for table `AM_imageshow_theme_classic_parameters`
--

CREATE TABLE IF NOT EXISTS `AM_imageshow_theme_classic_parameters` (
`id` int(11) NOT NULL,
  `general_swf_library` tinyint(1) DEFAULT '0',
  `root_url` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_imageshow_theme_flow`
--

CREATE TABLE IF NOT EXISTS `AM_imageshow_theme_flow` (
`theme_id` int(11) unsigned NOT NULL,
  `image_source` char(150) DEFAULT 'thumbnails',
  `image_width` char(150) DEFAULT '150',
  `image_height` char(150) DEFAULT '150',
  `image_border_thickness` char(150) DEFAULT '3',
  `image_border_rounded_corner` char(150) DEFAULT '2',
  `image_border_color` char(150) DEFAULT '#eeeeee',
  `image_effect` char(150) DEFAULT 'yes',
  `transparency` char(150) DEFAULT '50',
  `background_type` char(150) DEFAULT 'transparent',
  `background_color` char(150) DEFAULT '#ffffff',
  `container_side_fade` char(150) DEFAULT 'white',
  `animation_duration` char(150) DEFAULT '1',
  `click_action` char(150) DEFAULT 'show_original_image',
  `open_link_in` char(150) DEFAULT 'current_browser',
  `orientation` char(150) DEFAULT 'horizontal',
  `enable_keyboard_action` char(150) DEFAULT 'yes',
  `enable_mouse_wheel_action` char(150) DEFAULT 'yes',
  `show_caption` char(150) DEFAULT 'yes',
  `caption_background_color` char(150) DEFAULT '#000000',
  `caption_opacity` char(150) DEFAULT '75',
  `caption_show_title` char(150) DEFAULT 'yes',
  `caption_title_css` text,
  `caption_show_description` char(150) DEFAULT 'yes',
  `caption_description_length_limitation` char(150) DEFAULT '50',
  `caption_description_css` text,
  `auto_play` char(150) DEFAULT 'no',
  `slide_timing` char(150) DEFAULT '3',
  `pause_on_mouse_over` char(150) DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_imageshow_theme_flow`
--

INSERT INTO `AM_imageshow_theme_flow` (`theme_id`, `image_source`, `image_width`, `image_height`, `image_border_thickness`, `image_border_rounded_corner`, `image_border_color`, `image_effect`, `transparency`, `background_type`, `background_color`, `container_side_fade`, `animation_duration`, `click_action`, `open_link_in`, `orientation`, `enable_keyboard_action`, `enable_mouse_wheel_action`, `show_caption`, `caption_background_color`, `caption_opacity`, `caption_show_title`, `caption_title_css`, `caption_show_description`, `caption_description_length_limitation`, `caption_description_css`, `auto_play`, `slide_timing`, `pause_on_mouse_over`) VALUES
(1, 'original_images', '185', '150', '3', '2', '#eeeeee', 'yes', '75', 'solid_color', '#ffffff', 'white', '1', 'show_original_image', 'current_browser', 'horizontal', 'yes', 'yes', 'yes', '#000000', '75', 'yes', 'padding: 5px;\r\nfont-family: Verdana;\r\nfont-size: 12px;\r\nfont-weight: bold;\r\ntext-align: left;\r\ncolor: #E9E9E9;', 'yes', '50', 'padding: 5px;\r\nfont-family: Arial;\r\nfont-size: 11px;\r\nfont-weight: normal;\r\ntext-align: left;\r\ncolor: #AFAFAF;', 'no', '3', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `AM_imageshow_theme_grid`
--

CREATE TABLE IF NOT EXISTS `AM_imageshow_theme_grid` (
`theme_id` int(11) unsigned NOT NULL,
  `img_layout` char(5) DEFAULT 'fixed',
  `background_color` char(30) DEFAULT '#ffffff',
  `thumbnail_width` int(11) DEFAULT '50',
  `thumbnail_height` int(11) DEFAULT '50',
  `thumbnail_space` int(11) DEFAULT '10',
  `thumbnail_border` int(11) DEFAULT '3',
  `thumbnail_rounded_corner` int(11) DEFAULT '3',
  `thumbnail_border_color` char(30) DEFAULT '#ffffff',
  `thumbnail_shadow` char(1) DEFAULT '1',
  `image_source` char(150) DEFAULT 'thumbnail',
  `show_caption` char(150) DEFAULT 'yes',
  `caption_show_description` char(150) DEFAULT 'yes',
  `show_close` char(150) DEFAULT 'yes',
  `show_thumbs` char(150) DEFAULT 'yes',
  `click_action` char(150) DEFAULT 'show_original_image',
  `open_link_in` char(150) DEFAULT 'current_browser',
  `container_height_type` char(150) DEFAULT 'inherited',
  `container_transparent_background` char(150) DEFAULT 'no'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_imageshow_theme_grid`
--

INSERT INTO `AM_imageshow_theme_grid` (`theme_id`, `img_layout`, `background_color`, `thumbnail_width`, `thumbnail_height`, `thumbnail_space`, `thumbnail_border`, `thumbnail_rounded_corner`, `thumbnail_border_color`, `thumbnail_shadow`, `image_source`, `show_caption`, `caption_show_description`, `show_close`, `show_thumbs`, `click_action`, `open_link_in`, `container_height_type`, `container_transparent_background`) VALUES
(1, 'fixed', '#ffffff', 144, 99, 10, 3, 3, '#ffffff', '1', 'thumbnail', 'yes', 'yes', 'yes', 'yes', 'show_original_image', 'current_browser', 'inherited', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `AM_imageshow_theme_profile`
--

CREATE TABLE IF NOT EXISTS `AM_imageshow_theme_profile` (
  `theme_id` int(11) NOT NULL DEFAULT '0',
  `showcase_id` int(11) NOT NULL DEFAULT '0',
  `theme_name` varchar(255) NOT NULL DEFAULT '',
  `theme_style_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_imageshow_theme_profile`
--

INSERT INTO `AM_imageshow_theme_profile` (`theme_id`, `showcase_id`, `theme_name`, `theme_style_name`) VALUES
(3, 2, 'themeclassic', 'javascript'),
(1, 4, 'themecarousel', ''),
(1, 5, 'themestrip', ''),
(1, 3, 'themegrid', ''),
(1, 7, 'themeflow', ''),
(2, 6, 'themestrip', ''),
(1, 1, 'themeslider', '');

-- --------------------------------------------------------

--
-- Table structure for table `AM_imageshow_theme_slider`
--

CREATE TABLE IF NOT EXISTS `AM_imageshow_theme_slider` (
`theme_id` int(11) unsigned NOT NULL,
  `img_transition_effect` char(30) DEFAULT 'random',
  `toolbar_navigation_arrows_presentation` char(30) DEFAULT 'show-on-mouse-over',
  `toolbar_slideshow_player_presentation` char(30) DEFAULT 'hide',
  `caption_show_caption` char(30) DEFAULT 'yes',
  `caption_title_css` text,
  `caption_description_css` text,
  `caption_link_css` text,
  `caption_caption_opacity` char(30) DEFAULT '75',
  `caption_title_show` char(30) DEFAULT 'yes',
  `caption_description_show` char(30) DEFAULT 'yes',
  `caption_link_show` char(30) DEFAULT 'no',
  `slideshow_slide_timming` int(11) DEFAULT '6',
  `slideshow_pause_on_mouseover` char(30) DEFAULT 'yes',
  `slideshow_auto_play` char(30) DEFAULT 'yes',
  `thumnail_panel_position` char(30) DEFAULT 'right',
  `thumbnail_panel_presentation` char(30) DEFAULT 'show',
  `thumbnail_presentation_mode` char(30) DEFAULT 'numbers',
  `thumbnail_active_state_color` char(30) DEFAULT '#CC3333',
  `caption_position` char(150) DEFAULT 'bottom',
  `click_action` char(150) DEFAULT 'no_action',
  `open_link_in` char(150) DEFAULT 'current_browser',
  `img_transparent_background` char(150) DEFAULT 'no'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_imageshow_theme_slider`
--

INSERT INTO `AM_imageshow_theme_slider` (`theme_id`, `img_transition_effect`, `toolbar_navigation_arrows_presentation`, `toolbar_slideshow_player_presentation`, `caption_show_caption`, `caption_title_css`, `caption_description_css`, `caption_link_css`, `caption_caption_opacity`, `caption_title_show`, `caption_description_show`, `caption_link_show`, `slideshow_slide_timming`, `slideshow_pause_on_mouseover`, `slideshow_auto_play`, `thumnail_panel_position`, `thumbnail_panel_presentation`, `thumbnail_presentation_mode`, `thumbnail_active_state_color`, `caption_position`, `click_action`, `open_link_in`, `img_transparent_background`) VALUES
(1, 'random', 'show-on-mouse-over', 'hide', 'show', '', '', 'font-family: Verdana;\r\nfont-size: 11px;\r\nfont-weight: bold;\r\ntext-align: right;\r\ncolor: #E06614;', '75', 'yes', 'yes', 'no', 6, 'yes', 'yes', 'right', 'hide', 'numbers', '#CC3333', 'bottom', 'no_action', 'current_browser', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `AM_imageshow_theme_strip`
--

CREATE TABLE IF NOT EXISTS `AM_imageshow_theme_strip` (
`theme_id` int(11) unsigned NOT NULL,
  `slideshow_sliding_speed` char(150) NOT NULL DEFAULT '500',
  `image_orientation` char(150) NOT NULL DEFAULT 'horizontal',
  `image_width` char(150) NOT NULL DEFAULT '130',
  `image_height` char(150) NOT NULL DEFAULT '130',
  `image_space` char(150) NOT NULL DEFAULT '10',
  `image_border` char(150) NOT NULL DEFAULT '3',
  `image_rounded_corner` char(150) NOT NULL DEFAULT '3',
  `image_shadow` char(150) NOT NULL DEFAULT 'no-shadow',
  `image_border_color` char(150) NOT NULL DEFAULT '#cccccc',
  `image_click_action` char(150) NOT NULL DEFAULT 'no-action',
  `image_source` char(150) NOT NULL DEFAULT 'thumbnail',
  `show_caption` char(150) NOT NULL DEFAULT 'yes',
  `caption_background_color` char(150) NOT NULL DEFAULT '#000000',
  `caption_opacity` char(150) NOT NULL DEFAULT '75',
  `caption_show_title` char(150) NOT NULL DEFAULT 'yes',
  `caption_title_css` text NOT NULL,
  `caption_show_description` char(150) NOT NULL DEFAULT 'yes',
  `caption_description_length_limitation` char(150) NOT NULL DEFAULT '50',
  `caption_description_css` text NOT NULL,
  `container_type` char(150) NOT NULL DEFAULT 'elastislide-default',
  `container_border_color` char(150) NOT NULL DEFAULT '#cccccc',
  `container_border` char(150) NOT NULL DEFAULT '1',
  `container_round_corner` char(150) NOT NULL DEFAULT '0',
  `container_background_color` char(150) NOT NULL DEFAULT '#ffffff',
  `container_side_fade` char(150) NOT NULL DEFAULT 'white',
  `open_link_in` char(150) DEFAULT 'current_browser',
  `slideshow_auto_play` char(150) DEFAULT 'no',
  `slideshow_delay_time` char(150) DEFAULT '3000'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_imageshow_theme_strip`
--

INSERT INTO `AM_imageshow_theme_strip` (`theme_id`, `slideshow_sliding_speed`, `image_orientation`, `image_width`, `image_height`, `image_space`, `image_border`, `image_rounded_corner`, `image_shadow`, `image_border_color`, `image_click_action`, `image_source`, `show_caption`, `caption_background_color`, `caption_opacity`, `caption_show_title`, `caption_title_css`, `caption_show_description`, `caption_description_length_limitation`, `caption_description_css`, `container_type`, `container_border_color`, `container_border`, `container_round_corner`, `container_background_color`, `container_side_fade`, `open_link_in`, `slideshow_auto_play`, `slideshow_delay_time`) VALUES
(1, '500', 'vertical', '180', '130', '10', '0', '3', 'no-shadow', '#eeeeee', 'show-original-image', 'original_image', 'yes', '#000000', '75', 'yes', 'padding: 5px;\r\nfont-family: Verdana;\r\nfont-size: 12px;\r\nfont-weight: bold;\r\ntext-align: left;\r\ncolor: #E9E9E9;', 'yes', '50', 'padding: 5px;\r\nfont-family: Arial;\r\nfont-size: 11px;\r\nfont-weight: normal;\r\ntext-align: left;\r\ncolor: #AFAFAF;', 'customize', '#cccccc', '1', '0', '#000000', 'black', 'current_browser', 'no', '3000'),
(2, '500', 'horizontal', '180', '145', '10', '5', '3', 'no-shadow', '#555555', 'show-original-image', 'original_image', 'yes', '#000000', '75', 'yes', 'padding: 5px;\r\nfont-family: Verdana;\r\nfont-size: 12px;\r\nfont-weight: bold;\r\ntext-align: left;\r\ncolor: #E9E9E9;', 'yes', '50', 'padding: 5px;\r\nfont-family: Arial;\r\nfont-size: 11px;\r\nfont-weight: normal;\r\ntext-align: left;\r\ncolor: #AFAFAF;', 'none', '#cccccc', '1', '0', '#000000', 'none', 'current_browser', 'no', '3000');

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_imageshow_config`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_imageshow_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_jsn_imageshow_config`
--

INSERT INTO `AM_jsn_imageshow_config` (`name`, `value`) VALUES
('last_ask_for_review', '1361178389'),
('live_update_checking', '0'),
('live_update_last_check', '1414316062'),
('live_update_notification', '0'),
('review_popup', '0');

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_imageshow_messages`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_imageshow_messages` (
`msg_id` int(11) NOT NULL,
  `msg_screen` varchar(150) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_jsn_imageshow_messages`
--

INSERT INTO `AM_jsn_imageshow_messages` (`msg_id`, `msg_screen`, `published`, `ordering`) VALUES
(1, 'LAUNCH_PAD', 1, 1),
(2, 'LAUNCH_PAD', 1, 2),
(3, 'SHOWLISTS', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_mobilize_config`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_mobilize_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_jsn_mobilize_config`
--

INSERT INTO `AM_jsn_mobilize_config` (`name`, `value`) VALUES
('live_update_checking', '0'),
('live_update_last_check', '1414316062'),
('tmp_config', '');

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_mobilize_design`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_mobilize_design` (
`design_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_jsn_mobilize_design`
--

INSERT INTO `AM_jsn_mobilize_design` (`design_id`, `profile_id`, `name`, `value`) VALUES
(1, 1, 'mobilize-style', '{"jsn_template":"","jsn_menu":"[{\\"key\\":\\"jsn_menu_container_bo_borderThickness\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_menu_container_bo_borderStyle\\",\\"value\\":\\"hidden\\"},{\\"key\\":\\"jsn_menu_container_bo_borderColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_menu_container_ba_backgroundType\\",\\"value\\":\\"Solid\\"},{\\"key\\":\\"jsn_menu_container_ba_soildColor\\",\\"value\\":\\"#282828\\"},{\\"key\\":\\"jsn_menu_container_ba_gradientColor\\",\\"value\\":\\"-moz-linear-gradient(-90deg, #ffffff 0%, #ffffff 100%)\\"},{\\"key\\":\\"jsn_menu_container_ba_activeColor\\",\\"value\\":\\"#404040\\"},{\\"key\\":\\"jsn_menu_container_ic_iconColor\\",\\"value\\":\\"#ffffff\\"},{\\"key\\":\\"jsn_menu_sublevel1_bo_borderThickness\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_menu_sublevel1_bo_borderStyle\\",\\"value\\":\\"hidden\\"},{\\"key\\":\\"jsn_menu_sublevel1_bo_borderColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_menu_sublevel1_ba_normalColor\\",\\"value\\":\\"#333333\\"},{\\"key\\":\\"jsn_menu_sublevel1_ba_activeColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_menu_sublevel1_fo_fontFaceType\\",\\"value\\":\\"standard fonts\\"},{\\"value\\":\\"\\"},{\\"value\\":\\"\\"},{\\"key\\":\\"jsn_menu_sublevel1_fo_fontFace\\",\\"value\\":\\"Verdana\\"},{\\"key\\":\\"jsn_menu_sublevel1_fo_fontSize\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_menu_sublevel1_fo_fontStyle\\",\\"value\\":\\"inherit\\"},{\\"key\\":\\"jsn_menu_sublevel1_fo_fontColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_menu_sublevel2_ba_normalColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_menu_sublevel2_fo_fontFaceType\\",\\"value\\":\\"standard fonts\\"},{\\"value\\":\\"\\"},{\\"value\\":\\"\\"},{\\"key\\":\\"jsn_menu_sublevel2_fo_fontFace\\",\\"value\\":\\"Verdana\\"},{\\"key\\":\\"jsn_menu_sublevel2_fo_fontSize\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_menu_sublevel2_fo_fontStyle\\",\\"value\\":\\"inherit\\"},{\\"key\\":\\"jsn_menu_sublevel2_fo_fontColor\\",\\"value\\":\\"\\"}]","jsn_mobile_tool":"","jsn_content_top":"[{\\"key\\":\\"jsn_content_top_container_bo_borderThickness\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_top_container_bo_borderStyle\\",\\"value\\":\\"hidden\\"},{\\"key\\":\\"jsn_content_top_container_bo_borderColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_top_container_ba_backgroundType\\",\\"value\\":\\"Solid\\"},{\\"key\\":\\"jsn_content_top_container_ba_soildColor\\",\\"value\\":\\"#404040\\"},{\\"key\\":\\"jsn_content_top_container_ba_gradientColor\\",\\"value\\":\\"-moz-linear-gradient(-90deg, #ffffff 0%, #ffffff 100%)\\"},{\\"key\\":\\"jsn_content_top_container_sp_padding\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_top_module_tabContainer_bo_borderThickness\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_top_module_tabContainer_bo_borderStyle\\",\\"value\\":\\"hidden\\"},{\\"key\\":\\"jsn_content_top_module_tabContainer_bo_borderColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_top_module_tabContainer_ba_backgroundType\\",\\"value\\":\\"Solid\\"},{\\"key\\":\\"jsn_content_top_module_tabContainer_ba_soildColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_top_module_tabContainer_ba_gradientColor\\",\\"value\\":\\"-moz-linear-gradient(-90deg, #ffffff 0%, #ffffff 100%)\\"},{\\"key\\":\\"jsn_content_top_module_tabContainer_bo_roundedCornerRadius\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_top_module_tabContainer_sh_shadowSpread\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_top_module_tabContainer_sh_shadowColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_top_module_tabContainer_sp_margin\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_top_module_tabContainer_sp_padding\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_top_module_tabContent_title_fo_fontFaceType\\",\\"value\\":\\"standard fonts\\"},{\\"value\\":\\"\\"},{\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_top_module_tabContent_title_fo_fontFace\\",\\"value\\":\\"Verdana\\"},{\\"key\\":\\"jsn_content_top_module_tabContent_title_fo_fontSize\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_top_module_tabContent_title_fo_fontStyle\\",\\"value\\":\\"inherit\\"},{\\"key\\":\\"jsn_content_top_module_tabContent_title_fo_fontColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_top_module_tabContent_body_fo_fontFaceType\\",\\"value\\":\\"standard fonts\\"},{\\"value\\":\\"\\"},{\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_top_m_ct_fo_fontFace\\",\\"value\\":\\"Verdana\\"},{\\"key\\":\\"jsn_content_top_module_tabContent_body_fo_fontSize\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_top_module_tabContent_body_fo_fontStyle\\",\\"value\\":\\"inherit\\"},{\\"key\\":\\"jsn_content_top_module_tabContent_body_fo_fontColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_top_module_tabContent_link_linkColor\\",\\"value\\":\\"\\"}]","jsn_mainbody":"[{\\"key\\":\\"jsn_mainbody_container_sp_paddingleft\\",\\"value\\":\\"20\\"},{\\"key\\":\\"jsn_mainbody_container_sp_paddingright\\",\\"value\\":\\"20\\"},{\\"key\\":\\"jsn_mainbody_container_sp_paddingtop\\",\\"value\\":\\"10\\"},{\\"key\\":\\"jsn_mainbody_container_sp_paddingbottom\\",\\"value\\":\\"10\\"}]","jsn_user_top":"","jsn_user_bottom":"[{\\"key\\":\\"jsn_user_bottom_container_bo_borderThickness\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_user_bottom_container_bo_borderStyle\\",\\"value\\":\\"hidden\\"},{\\"key\\":\\"jsn_user_bottom_container_bo_borderColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_user_bottom_container_ba_backgroundType\\",\\"value\\":\\"Solid\\"},{\\"key\\":\\"jsn_user_bottom_container_ba_soildColor\\",\\"value\\":\\"#d9d9d9\\"},{\\"key\\":\\"jsn_user_bottom_container_ba_gradientColor\\",\\"value\\":\\"-moz-linear-gradient(-90deg, #ffffff 0%, #ffffff 100%)\\"},{\\"key\\":\\"jsn_user_bottom_container_sp_padding\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_user_bottom_module_tabContainer_bo_borderThickness\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_user_bottom_module_tabContainer_bo_borderStyle\\",\\"value\\":\\"hidden\\"},{\\"key\\":\\"jsn_user_bottom_module_tabContainer_bo_borderColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_user_bottom_module_tabContainer_ba_backgroundType\\",\\"value\\":\\"Solid\\"},{\\"key\\":\\"jsn_user_bottom_module_tabContainer_ba_soildColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_user_bottom_module_tabContainer_ba_gradientColor\\",\\"value\\":\\"-moz-linear-gradient(-90deg, #ffffff 0%, #ffffff 100%)\\"},{\\"key\\":\\"jsn_user_bottom_module_tabContainer_bo_roundedCornerRadius\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_user_bottom_module_tabContainer_sh_shadowSpread\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_user_bottom_module_tabContainer_sh_shadowColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_user_bottom_module_tabContainer_sp_margin\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_user_bottom_module_tabContainer_sp_padding\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_user_bottom_module_tabContent_title_fo_fontFaceType\\",\\"value\\":\\"standard fonts\\"},{\\"value\\":\\"\\"},{\\"value\\":\\"\\"},{\\"key\\":\\"jsn_user_bottom_module_tabContent_title_fo_fontFace\\",\\"value\\":\\"Verdana\\"},{\\"key\\":\\"jsn_user_bottom_module_tabContent_title_fo_fontSize\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_user_bottom_module_tabContent_title_fo_fontStyle\\",\\"value\\":\\"inherit\\"},{\\"key\\":\\"jsn_user_bottom_module_tabContent_title_fo_fontColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_user_bottom_module_tabContent_body_fo_fontFaceType\\",\\"value\\":\\"standard fonts\\"},{\\"value\\":\\"\\"},{\\"value\\":\\"\\"},{\\"key\\":\\"jsn_user_bottom_m_ct_fo_fontFace\\",\\"value\\":\\"Verdana\\"},{\\"key\\":\\"jsn_user_bottom_module_tabContent_body_fo_fontSize\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_user_bottom_module_tabContent_body_fo_fontStyle\\",\\"value\\":\\"inherit\\"},{\\"key\\":\\"jsn_user_bottom_module_tabContent_body_fo_fontColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_user_bottom_module_tabContent_link_linkColor\\",\\"value\\":\\"\\"}]","jsn_content_bottom":"[{\\"key\\":\\"jsn_content_bottom_container_bo_borderThickness\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_bottom_container_bo_borderStyle\\",\\"value\\":\\"hidden\\"},{\\"key\\":\\"jsn_content_bottom_container_bo_borderColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_bottom_container_ba_backgroundType\\",\\"value\\":\\"Solid\\"},{\\"key\\":\\"jsn_content_bottom_container_ba_soildColor\\",\\"value\\":\\"#d9d9d9\\"},{\\"key\\":\\"jsn_content_bottom_container_ba_gradientColor\\",\\"value\\":\\"-moz-linear-gradient(-90deg, #ffffff 0%, #ffffff 100%)\\"},{\\"key\\":\\"jsn_content_bottom_container_sp_padding\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_bottom_module_tabContainer_bo_borderThickness\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_bottom_module_tabContainer_bo_borderStyle\\",\\"value\\":\\"hidden\\"},{\\"key\\":\\"jsn_content_bottom_module_tabContainer_bo_borderColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_bottom_module_tabContainer_ba_backgroundType\\",\\"value\\":\\"Solid\\"},{\\"key\\":\\"jsn_content_bottom_module_tabContainer_ba_soildColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_bottom_module_tabContainer_ba_gradientColor\\",\\"value\\":\\"-moz-linear-gradient(-90deg, #ffffff 0%, #ffffff 100%)\\"},{\\"key\\":\\"jsn_content_bottom_module_tabContainer_bo_roundedCornerRadius\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_bottom_module_tabContainer_sh_shadowSpread\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_bottom_module_tabContainer_sh_shadowColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_bottom_module_tabContainer_sp_margin\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_bottom_module_tabContainer_sp_padding\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_bottom_module_tabContent_title_fo_fontFaceType\\",\\"value\\":\\"standard fonts\\"},{\\"value\\":\\"\\"},{\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_bottom_module_tabContent_title_fo_fontFace\\",\\"value\\":\\"Verdana\\"},{\\"key\\":\\"jsn_content_bottom_module_tabContent_title_fo_fontSize\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_bottom_module_tabContent_title_fo_fontStyle\\",\\"value\\":\\"inherit\\"},{\\"key\\":\\"jsn_content_bottom_module_tabContent_title_fo_fontColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_bottom_module_tabContent_body_fo_fontFaceType\\",\\"value\\":\\"standard fonts\\"},{\\"value\\":\\"\\"},{\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_bottom_m_ct_fo_fontFace\\",\\"value\\":\\"Verdana\\"},{\\"key\\":\\"jsn_content_bottom_module_tabContent_body_fo_fontSize\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_bottom_module_tabContent_body_fo_fontStyle\\",\\"value\\":\\"inherit\\"},{\\"key\\":\\"jsn_content_bottom_module_tabContent_body_fo_fontColor\\",\\"value\\":\\"\\"},{\\"key\\":\\"jsn_content_bottom_module_tabContent_link_linkColor\\",\\"value\\":\\"\\"}]","jsn_footer":"","jsn_style":"","jsn_social":"{\\"fa-facebook\\":{\\"0\\":\\"\\",\\"1\\":{\\"0\\":\\"choised\\",\\"1\\":\\"none\\"}},\\"fa-twitter\\":{\\"0\\":\\"\\",\\"1\\":{\\"0\\":\\"choised\\",\\"1\\":\\"none\\"}},\\"fa-google-plus\\":{\\"0\\":\\"\\",\\"1\\":{\\"0\\":\\"choised\\",\\"1\\":\\"none\\"}},\\"fa-instagram\\":{\\"0\\":\\"\\",\\"1\\":{\\"0\\":\\"choised\\",\\"1\\":\\"none\\"}},\\"fa-youtube-play\\":{\\"0\\":\\"\\",\\"1\\":{\\"0\\":\\"choised\\",\\"1\\":\\"none\\"}},\\"fa-linkedin\\":{\\"0\\":\\"\\",\\"1\\":{\\"0\\":\\"choised\\",\\"1\\":\\"none\\"}},\\"fa-pinterest\\":{\\"0\\":\\"\\",\\"1\\":{\\"0\\":\\"choised\\",\\"1\\":\\"none\\"}},\\"fa-flickr\\":{\\"0\\":\\"\\",\\"1\\":{\\"0\\":\\"choised\\",\\"1\\":\\"none\\"}},\\"fa-tumblr\\":{\\"0\\":\\"\\",\\"1\\":{\\"0\\":\\"choised\\",\\"1\\":\\"none\\"}},\\"fa-vimeo-square\\":{\\"0\\":\\"\\",\\"1\\":{\\"0\\":\\"choised\\",\\"1\\":\\"none\\"}},\\"fa-deviantart\\":{\\"0\\":\\"\\",\\"1\\":{\\"0\\":\\"choised\\",\\"1\\":\\"none\\"}},\\"fa-digg\\":{\\"0\\":\\"\\",\\"1\\":{\\"0\\":\\"choised\\",\\"1\\":\\"none\\"}},\\"fa-dribbble\\":{\\"0\\":\\"\\",\\"1\\":{\\"0\\":\\"choised\\",\\"1\\":\\"none\\"}},\\"fa-behance\\":{\\"0\\":\\"\\",\\"1\\":{\\"0\\":\\"choised\\",\\"1\\":\\"none\\"}}}","jsn_switcher":""}'),
(2, 1, 'mobilize-css-file', 'profile_1.css'),
(3, 1, 'mobilize-custom-css-files', ''),
(4, 1, 'mobilize-custom-css-code', ''),
(5, 1, 'mobilize-css', '\n#jsn-master .jsn-mobile-layout #jsn-menu{ background:#282828; }\n#jsn-master .jsn-mobile-layout #jsn-menu .mobilize-menu ul.jsn-menu-mobile,#jsn_menu .mobilize-menu div.jsn-menu-mobile{ background:#333333; }\n#jsn-master .jsn-mobile-layout #jsn-menu .mobilize-menu ul.jsn-menu-mobile > li > a{ font-family:Verdana;font-style:inherit; }\n#jsn-master .jsn-mobile-layout #jsn-menu .mobilize-menu ul.jsn-menu-mobile ul{  }\n#jsn-master .jsn-mobile-layout #jsn-menu .mobilize-menu ul.jsn-menu-mobile ul li a{ font-family:Verdana;font-style:inherit; }\n#jsn-master .jsn-mobile-layout #jsn-menu .mobilize-menu > li > span.active{ background:#404040; }\n#jsn-master .jsn-mobile-layout #jsn-menu .mobilize-menu > li > ul > li.sub-menu-active{  }\n#jsn-master .jsn-mobile-layout #jsn-menu .mobilize-menu > li > ul > li.sub-menu-active > ul li.current{  }\n#jsn-master .jsn-mobile-layout #jsn-menu .mobilize-menu > li > span.jsn-menu-toggle i { color:#ffffff;\nbackground-image: url(''/GDA/media/jui/img/glyphicons-halflings-white.png'');\ncolor:#ffffff; }\n#jsn-master .jsn-mobile-layout #jsn-content-top { background:#404040; }\n#jsn-master .jsn-mobile-layout #jsn-content-top { background:#404040; }\n#jsn-master .jsn-mobile-layout #jsn-mainbody { padding-left:20px;padding-right:20px;padding-top:10px;padding-bottom:10px; }\n#jsn-master .jsn-mobile-layout #jsn-user-bottom { background:#d9d9d9; }\n#jsn-master .jsn-mobile-layout #jsn-content-bottom { background:#d9d9d9; }'),
(6, 1, 'mobilize-logo', '{"":""}'),
(7, 1, 'mobilize-login', '{"":""}'),
(8, 1, 'mobilize-search', '{"":""}'),
(9, 1, 'mobilize-menu', '{"1":"Main Menu"}'),
(10, 1, 'mobilize-mobile-tool-left', '{}'),
(11, 1, 'mobilize-mobile-tool-right', '{"promo":"position"}'),
(12, 1, 'mobilize-content-top-left', '{}'),
(13, 1, 'mobilize-content-top-right', '{}'),
(14, 1, 'mobilize-user-top-left', '{}'),
(15, 1, 'mobilize-user-top-right', '{}'),
(16, 1, 'mobilize-user-bottom-left', '{}'),
(17, 1, 'mobilize-user-bottom-right', '{}'),
(18, 1, 'mobilize-content-bottom-left', '{}'),
(19, 1, 'mobilize-content-bottom-right', '{}'),
(20, 1, 'mobilize-footer-left', '{}'),
(21, 1, 'mobilize-footer-right', '{"left":"position","right":"position","footer":"position"}'),
(22, 1, 'mobilize-switcher', '{"":""}');

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_mobilize_messages`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_mobilize_messages` (
`msg_id` int(11) NOT NULL,
  `msg_screen` varchar(150) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_mobilize_os`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_mobilize_os` (
`os_id` int(11) NOT NULL,
  `os_value` varchar(255) NOT NULL,
  `os_type` varchar(50) NOT NULL,
  `os_title` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_jsn_mobilize_os`
--

INSERT INTO `AM_jsn_mobilize_os` (`os_id`, `os_value`, `os_type`, `os_title`) VALUES
(1, '{"ios":["6","<"]}', 'ios', 'iOS 6.x and bellow'),
(2, '{"ios":["7"]}', 'ios', 'iOS 7.x'),
(3, '{"ios":["8"]}', 'ios', 'iOS 8.x'),
(4, '{"android":["2"]}', 'android', 'Android 2.2 - 2.3'),
(5, '{"android":["4"]}', 'android', 'Android 4.x'),
(6, '{"wmobilie":["6","<"]}', 'wmobilie', 'Windows Mobile 6.x and bellow'),
(7, '{"wmobilie":["7"]}', 'wmobilie', 'Windows Mobile 7.x'),
(8, '{"wmobilie":["8"]}', 'wmobilie', 'Windows Mobile 8.x'),
(9, '{"blackberry":["5","<"]}', 'blackberry', 'BlackBerry 5.x and bellow'),
(10, '{"blackberry":["6","7"]}', 'blackberry', 'BlackBerry 6x - 7x'),
(11, '{"blackberry":["10"]}', 'blackberry', 'BlackBerry 10x'),
(12, 'other', 'other', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_mobilize_os_support`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_mobilize_os_support` (
`support_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `os_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_jsn_mobilize_os_support`
--

INSERT INTO `AM_jsn_mobilize_os_support` (`support_id`, `profile_id`, `os_id`) VALUES
(5, 1, 1),
(6, 1, 2),
(7, 1, 3),
(8, 1, 4),
(9, 1, 5),
(10, 1, 6),
(11, 1, 7),
(12, 1, 8),
(13, 1, 9),
(14, 1, 10),
(15, 1, 11),
(16, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_mobilize_profiles`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_mobilize_profiles` (
`profile_id` int(11) NOT NULL,
  `profile_title` varchar(255) NOT NULL,
  `profile_description` text NOT NULL,
  `profile_state` int(11) NOT NULL,
  `profile_minify` varchar(50) NOT NULL,
  `profile_optimize_images` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_jsn_mobilize_profiles`
--

INSERT INTO `AM_jsn_mobilize_profiles` (`profile_id`, `profile_title`, `profile_description`, `profile_state`, `profile_minify`, `profile_optimize_images`, `ordering`) VALUES
(1, 'Demo profile', '', 1, '', 540, 0);

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_poweradmin_config`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_poweradmin_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_jsn_poweradmin_config`
--

INSERT INTO `AM_jsn_poweradmin_config` (`name`, `value`) VALUES
('live_update_checking', '0'),
('live_update_last_check', '1414316062');

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_poweradmin_favourite`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_poweradmin_favourite` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `icon` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_poweradmin_history`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_poweradmin_history` (
`id` int(11) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `object_key` varchar(255) NOT NULL,
  `object_id` int(11) NOT NULL,
  `component` varchar(255) NOT NULL,
  `list_page` varchar(255) NOT NULL,
  `list_page_params` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` tinytext NOT NULL,
  `form` text NOT NULL,
  `form_hash` varchar(32) NOT NULL,
  `params` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `css` varchar(100) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `visited` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_jsn_poweradmin_history`
--

INSERT INTO `AM_jsn_poweradmin_history` (`id`, `user_id`, `object_key`, `object_id`, `component`, `list_page`, `list_page_params`, `title`, `description`, `form`, `form_hash`, `params`, `icon`, `css`, `is_deleted`, `visited`) VALUES
(1, 638, 'option=com_menus&view=item&layout=edit', 183, '', '', '', 'About Us', '', '', '', 'option=com_menus&view=item&layout=edit&id=183', '', '', 0, 1414316198),
(2, 638, 'option=com_menus&view=item&layout=edit', 184, '', '', '', 'Organizational Structure', '', '', '', 'option=com_menus&view=item&layout=edit&id=184', '', '', 0, 1414316284),
(3, 638, 'option=com_menus&view=item&layout=edit', 185, '', '', '', 'Vision', '', '', '', 'option=com_menus&view=item&layout=edit&id=185', '', '', 0, 1414316317),
(4, 638, 'option=com_menus&view=item&layout=edit', 186, '', '', '', 'Mission', '', '', '', 'option=com_menus&view=item&layout=edit&id=186', '', '', 0, 1414316334),
(5, 638, 'option=com_menus&view=item&layout=edit', 187, '', '', '', 'Center | Innerright | Right', '', '', '', 'option=com_menus&view=item&layout=edit&id=187', '', '', 1, 1414316352),
(6, 638, 'option=com_menus&view=item&layout=edit', 189, '', '', '', 'Projects', '', '', '', 'option=com_menus&view=item&layout=edit&id=189', '', '', 1, 1414316434),
(7, 638, 'option=com_menus&view=item&layout=edit', 190, '', '', '', 'Projects', '', '', '', 'option=com_menus&view=item&layout=edit&id=190', '', '', 0, 1414316469),
(8, 638, 'option=com_menus&view=item&layout=edit', 193, '', '', '', 'Memberships', '', '', '', 'option=com_menus&view=item&layout=edit&id=193', '', '', 0, 1414316668),
(9, 638, 'option=com_menus&view=item&layout=edit', 245, '', '', '', 'Forum', '', '', '', 'option=com_menus&view=item&layout=edit&id=245', '', '', 0, 1414316699),
(10, 638, 'option=com_menus&view=item&layout=edit', 194, '', '', '', 'FAQ', '', '', '', 'option=com_menus&view=item&layout=edit&id=194', '', '', 0, 1414316800),
(11, 638, 'option=com_menus&view=item&layout=edit', 1086, '', '', '', 'News', '', '', '', 'option=com_menus&view=item&layout=edit&id=1086', '', '', 0, 1414316930),
(12, 638, 'option=com_menus&view=item&layout=edit', 1087, '', '', '', 'Publications', '', '', '', 'option=com_menus&view=item&layout=edit&id=1087', '', '', 0, 1414317099),
(13, 638, 'option=com_menus&view=item&layout=edit', 1088, '', '', '', 'Vacancy', '', '', '', 'option=com_menus&view=item&layout=edit&id=1088', '', '', 0, 1414317132),
(14, 638, 'option=com_menus&view=item&layout=edit', 172, '', '', '', 'Easy to Start', '', '', '', 'option=com_menus&view=item&layout=edit&id=172', '', '', 0, 1414318255),
(15, 638, 'option=com_mobilize&view=profile&layout=edit', 1, '', '', '', 'Demo profile', '', '', '', 'option=com_mobilize&view=profile&layout=edit&profile_id=1', '', '', 0, 1414318480),
(16, 638, 'option=com_templates&view=style&layout=edit', 9, 'Template Manager', 'Template Manager', '', 'JSN Epic FREE - Default', '', '', '', 'option=com_templates&task=style.edit&id=9', 'templates/bluestork/images/menu/icon-16-themes.png', 'icon-16-themes', 0, 1414319036);

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_poweradmin_menu_assets`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_poweradmin_menu_assets` (
  `menuId` int(16) NOT NULL,
  `assets` text,
  `type` enum('css','js') NOT NULL DEFAULT 'css',
  `legacy` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_uniform_config`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_uniform_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_jsn_uniform_config`
--

INSERT INTO `AM_jsn_uniform_config` (`name`, `value`) VALUES
('form_style', ''),
('last_ask_for_review', '1378718450'),
('live_update_checking', '0'),
('live_update_last_check', '1414316062'),
('live_update_last_notified', '{"name":"JSN UniForm","identified_name":"ext_uniform","description":" JSN UniForm PRO allows you to create form","version":"1.4.0","thumbnail":"http://www.joomlashine.com/images/content/joomla-extensions/jsn-uniform/introduction/jsn-uniform-banner.jpg","url":"http://www.joomlashine.com/joomla-extensions/jsn-uniform-details.html","tags":"2.5;3.0;3.1","editions":[{"edition":"PRO UNLIMITED","authentication":true,"related_product":[]},{"edition":"PRO STANDARD","authentication":true,"related_product":[]},{"edition":"FREE","authentication":false,"related_product":[]}]}');

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_uniform_data`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_uniform_data` (
`data_id` int(10) unsigned NOT NULL,
  `form_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `data_ip` varchar(40) NOT NULL,
  `data_country` varchar(45) NOT NULL,
  `data_country_code` varchar(4) NOT NULL,
  `data_browser` varchar(45) NOT NULL,
  `data_browser_version` varchar(20) NOT NULL,
  `data_browser_agent` varchar(255) NOT NULL,
  `data_os` varchar(45) NOT NULL,
  `data_created_by` int(10) unsigned NOT NULL COMMENT '0 = Guest',
  `data_created_at` datetime NOT NULL,
  `data_state` tinyint(1) unsigned NOT NULL COMMENT '-1 = Trashed; 0 = Unpublish; 1 = Published'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_jsn_uniform_data`
--

INSERT INTO `AM_jsn_uniform_data` (`data_id`, `form_id`, `user_id`, `data_ip`, `data_country`, `data_country_code`, `data_browser`, `data_browser_version`, `data_browser_agent`, `data_os`, `data_created_by`, `data_created_at`, `data_state`) VALUES
(1, 1, 0, '118.70.131.15', '(Unknown Country?)', 'XX', 'Chrome', '29.0.1547.66', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', 'Windows', 0, '2013-09-09 16:23:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_uniform_emails`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_uniform_emails` (
`email_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `email_name` varchar(70) DEFAULT NULL,
  `email_address` varchar(255) NOT NULL,
  `email_state` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_jsn_uniform_emails`
--

INSERT INTO `AM_jsn_uniform_emails` (`email_id`, `form_id`, `user_id`, `email_name`, `email_address`, `email_state`) VALUES
(3, 1, 0, '', 'example.admin@joomlashine.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_uniform_fields`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_uniform_fields` (
`field_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `field_type` varchar(45) NOT NULL,
  `field_identifier` varchar(255) NOT NULL,
  `field_title` varchar(255) DEFAULT NULL,
  `field_instructions` text,
  `field_position` varchar(50) NOT NULL,
  `field_ordering` int(10) unsigned NOT NULL DEFAULT '0',
  `field_settings` text
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_jsn_uniform_fields`
--

INSERT INTO `AM_jsn_uniform_fields` (`field_id`, `form_id`, `field_type`, `field_identifier`, `field_title`, `field_instructions`, `field_position`, `field_ordering`, `field_settings`) VALUES
(3, 1, 'choices', 'who_are_you_tell_more_about_yourself', 'Who are you? Tell more about yourself', '', 'left', 0, '{"id":3,"identify":"who_are_you_tell_more_about_yourself","options":{"label":"Who are you? Tell more about yourself","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Individual building website for himself ","checked":false},{"text":"Freelancer building websites for clients ","checked":false},{"text":"Web Agency ","checked":false}],"value":"","identify":"who_are_you_tell_more_about_yourself","allowOther":"1"},"type":"choices","position":"left"}'),
(4, 1, 'choices', 'your_joomla_experience_', 'Your Joomla experience: ', '', 'left', 1, '{"id":4,"identify":"your_joomla_experience_","options":{"label":"Your Joomla experience: ","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Less than 1 year ","checked":false},{"text":"1-3 years ","checked":false},{"text":"More than 3 years ","checked":false}],"value":"","identify":"your_joomla_experience_"},"type":"choices","position":"left"}'),
(5, 1, 'choices', 'which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_', 'Which forum extension do you like to see JoomlaShine template compatible with?', '', 'left', 2, '{"id":5,"identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","options":{"label":"Which forum extension do you like to see JoomlaShine template compatible with?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Kunena ","checked":false},{"text":"Dicussions ","checked":false},{"text":"Ninjaboard ","checked":false}],"value":"","identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","allowOther":"1"},"type":"choices","position":"left"}'),
(6, 1, 'choices', 'about_sample_data_which_way_do_you_prefer_', 'About sample data, which way do you prefer?', 'Sample data installation on your current website \r\nWhole Joomla! site installation package with sample data ', 'left', 3, '{"id":6,"identify":"about_sample_data_which_way_do_you_prefer_","options":{"label":"About sample data, which way do you prefer?","instruction":"Sample data installation on your current website \\r\\nWhole Joomla! site installation package with sample data ","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Sample data installation on your current website ","checked":false},{"text":"Whole Joomla! site installation package with sample data ","checked":false}],"value":"","identify":"about_sample_data_which_way_do_you_prefer_"},"type":"choices","position":"left"}'),
(7, 1, 'paragraph-text', 'what_makes_you_love_joomlashine_template_', 'What makes you love JoomlaShine template?', '', 'left', 4, '{"id":7,"identify":"what_makes_you_love_joomlashine_template_","options":{"label":"What makes you love JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_makes_you_love_joomlashine_template_"},"type":"paragraph-text","position":"left"}'),
(8, 1, 'paragraph-text', 'which_are_the_things_you_don_t_like_in_joomlashine_template_', 'Which are the things you don''t like in JoomlaShine template?', '', 'left', 5, '{"id":8,"identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_","options":{"label":"Which are the things you don''t like in JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_"},"type":"paragraph-text","position":"left"}'),
(9, 1, 'choices', 'which_features_do_you_like_to_see_joomlashine_template_have_', 'Which features do you like to see JoomlaShine template have?', '', 'left', 6, '{"id":9,"identify":"which_features_do_you_like_to_see_joomlashine_template_have_","options":{"label":"Which features do you like to see JoomlaShine template have?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Control Panel to customize style ","checked":false},{"text":"Mega menu ","checked":false},{"text":"More icons to use ","checked":false}],"value":"","identify":"which_features_do_you_like_to_see_joomlashine_template_have_","allowOther":"1"},"type":"choices","position":"left"}'),
(10, 1, 'paragraph-text', 'what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_', 'What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ', '', 'left', 7, '{"id":10,"identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_","options":{"label":"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ","instruction":"","required":0,"limitation":0,"limitMin":0,"limitMax":0,"rows":"3","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_"},"type":"paragraph-text","position":"left"}');

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_uniform_form_pages`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_uniform_form_pages` (
`page_id` int(11) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `form_id` int(11) NOT NULL,
  `page_content` text NOT NULL,
  `page_template` text NOT NULL,
  `page_container` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_jsn_uniform_form_pages`
--

INSERT INTO `AM_jsn_uniform_form_pages` (`page_id`, `page_title`, `form_id`, `page_content`, `page_template`, `page_container`) VALUES
(1, 'Page 1', 1, '[{"id":3,"type":"choices","position":"left","identify":"who_are_you_tell_more_about_yourself","label":"Who are you? Tell more about yourself","instruction":"","options":{"label":"Who are you? Tell more about yourself","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Individual building website for himself ","checked":false},{"text":"Freelancer building websites for clients ","checked":false},{"text":"Web Agency ","checked":false}],"value":"","identify":"who_are_you_tell_more_about_yourself","allowOther":"1"}},{"id":4,"type":"choices","position":"left","identify":"your_joomla_experience_","label":"Your Joomla experience: ","instruction":"","options":{"label":"Your Joomla experience: ","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Less than 1 year ","checked":false},{"text":"1-3 years ","checked":false},{"text":"More than 3 years ","checked":false}],"value":"","identify":"your_joomla_experience_"}},{"id":5,"type":"choices","position":"left","identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","label":"Which forum extension do you like to see JoomlaShine template compatible with?","instruction":"","options":{"label":"Which forum extension do you like to see JoomlaShine template compatible with?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Kunena ","checked":false},{"text":"Dicussions ","checked":false},{"text":"Ninjaboard ","checked":false}],"value":"","identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","allowOther":"1"}},{"id":6,"type":"choices","position":"left","identify":"about_sample_data_which_way_do_you_prefer_","label":"About sample data, which way do you prefer?","instruction":"Sample data installation on your current website \\r\\nWhole Joomla! site installation package with sample data ","options":{"label":"About sample data, which way do you prefer?","instruction":"Sample data installation on your current website \\r\\nWhole Joomla! site installation package with sample data ","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Sample data installation on your current website ","checked":false},{"text":"Whole Joomla! site installation package with sample data ","checked":false}],"value":"","identify":"about_sample_data_which_way_do_you_prefer_"}},{"id":7,"type":"paragraph-text","position":"left","identify":"what_makes_you_love_joomlashine_template_","label":"What makes you love JoomlaShine template?","instruction":"","options":{"label":"What makes you love JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_makes_you_love_joomlashine_template_"}},{"id":8,"type":"paragraph-text","position":"left","identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_","label":"Which are the things you don''t like in JoomlaShine template?","instruction":"","options":{"label":"Which are the things you don''t like in JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_"}},{"id":9,"type":"choices","position":"left","identify":"which_features_do_you_like_to_see_joomlashine_template_have_","label":"Which features do you like to see JoomlaShine template have?","instruction":"","options":{"label":"Which features do you like to see JoomlaShine template have?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Control Panel to customize style ","checked":false},{"text":"Mega menu ","checked":false},{"text":"More icons to use ","checked":false}],"value":"","identify":"which_features_do_you_like_to_see_joomlashine_template_have_","allowOther":"1"}},{"id":10,"type":"paragraph-text","position":"left","identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_","label":"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ","instruction":"","options":{"label":"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ","instruction":"","required":0,"limitation":0,"limitMin":0,"limitMax":0,"rows":"3","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_"}}]', '{"dataField":[{"field_type":"choices","field_id":"sb_3","field_title":"Who are you? Tell more about yourself","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":3,\\"identify\\":\\"who_are_you_tell_more_about_yourself\\",\\"options\\":{\\"label\\":\\"Who are you? Tell more about yourself\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Individual building website for himself \\",\\"checked\\":false},{\\"text\\":\\"Freelancer building websites for clients \\",\\"checked\\":false},{\\"text\\":\\"Web Agency \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"who_are_you_tell_more_about_yourself\\",\\"allowOther\\":\\"1\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"choices","field_id":"sb_4","field_title":"Your Joomla experience: ","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":4,\\"identify\\":\\"your_joomla_experience_\\",\\"options\\":{\\"label\\":\\"Your Joomla experience: \\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Less than 1 year \\",\\"checked\\":false},{\\"text\\":\\"1-3 years \\",\\"checked\\":false},{\\"text\\":\\"More than 3 years \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"your_joomla_experience_\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"choices","field_id":"sb_5","field_title":"Which forum extension do you like to see JoomlaShine template compatible with?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":5,\\"identify\\":\\"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_\\",\\"options\\":{\\"label\\":\\"Which forum extension do you like to see JoomlaShine template compatible with?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Kunena \\",\\"checked\\":false},{\\"text\\":\\"Dicussions \\",\\"checked\\":false},{\\"text\\":\\"Ninjaboard \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_\\",\\"allowOther\\":\\"1\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"choices","field_id":"sb_6","field_title":"About sample data, which way do you prefer?","field_instructions":"Sample data installation on your current website \\r\\nWhole Joomla! site installation package with sample data ","field_position":"left","field_settings":"{\\"id\\":6,\\"identify\\":\\"about_sample_data_which_way_do_you_prefer_\\",\\"options\\":{\\"label\\":\\"About sample data, which way do you prefer?\\",\\"instruction\\":\\"Sample data installation on your current website \\\\r\\\\nWhole Joomla! site installation package with sample data \\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Sample data installation on your current website \\",\\"checked\\":false},{\\"text\\":\\"Whole Joomla! site installation package with sample data \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"about_sample_data_which_way_do_you_prefer_\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"paragraph-text","field_id":"sb_7","field_title":"What makes you love JoomlaShine template?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":7,\\"identify\\":\\"what_makes_you_love_joomlashine_template_\\",\\"options\\":{\\"label\\":\\"What makes you love JoomlaShine template?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"rows\\":\\"4\\",\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"limitType\\":\\"Words\\",\\"value\\":\\"\\",\\"identify\\":\\"what_makes_you_love_joomlashine_template_\\"},\\"type\\":\\"paragraph-text\\",\\"position\\":\\"left\\"}"},{"field_type":"paragraph-text","field_id":"sb_8","field_title":"Which are the things you don''t like in JoomlaShine template?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":8,\\"identify\\":\\"which_are_the_things_you_don_t_like_in_joomlashine_template_\\",\\"options\\":{\\"label\\":\\"Which are the things you don''t like in JoomlaShine template?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"rows\\":\\"4\\",\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"limitType\\":\\"Words\\",\\"value\\":\\"\\",\\"identify\\":\\"which_are_the_things_you_don_t_like_in_joomlashine_template_\\"},\\"type\\":\\"paragraph-text\\",\\"position\\":\\"left\\"}"},{"field_type":"choices","field_id":"sb_9","field_title":"Which features do you like to see JoomlaShine template have?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":9,\\"identify\\":\\"which_features_do_you_like_to_see_joomlashine_template_have_\\",\\"options\\":{\\"label\\":\\"Which features do you like to see JoomlaShine template have?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Control Panel to customize style \\",\\"checked\\":false},{\\"text\\":\\"Mega menu \\",\\"checked\\":false},{\\"text\\":\\"More icons to use \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"which_features_do_you_like_to_see_joomlashine_template_have_\\",\\"allowOther\\":\\"1\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"paragraph-text","field_id":"sb_10","field_title":"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":10,\\"identify\\":\\"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_\\",\\"options\\":{\\"label\\":\\"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? \\",\\"instruction\\":\\"\\",\\"required\\":0,\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"rows\\":\\"3\\",\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"limitType\\":\\"Words\\",\\"value\\":\\"\\",\\"identify\\":\\"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_\\"},\\"type\\":\\"paragraph-text\\",\\"position\\":\\"left\\"}"}],"dataFormLayout":"default"}', '[[{"columnName":"left","columnClass":"span12"}]]');

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_uniform_forms`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_uniform_forms` (
`form_id` int(11) NOT NULL,
  `form_title` varchar(255) NOT NULL,
  `form_description` text,
  `form_layout` varchar(50) NOT NULL,
  `form_theme` varchar(45) NOT NULL,
  `form_style` text NOT NULL,
  `form_notify_submitter` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `form_post_action` tinyint(1) unsigned NOT NULL COMMENT '1 = Redirect to URL; 2 = Redirect to Menu Item; 3 = Show Article; 4 = Show custom message',
  `form_post_action_data` text NOT NULL,
  `form_captcha` tinyint(1) unsigned NOT NULL,
  `form_state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `form_access` int(11) NOT NULL,
  `form_created_by` int(10) unsigned NOT NULL,
  `form_created_at` datetime DEFAULT NULL,
  `form_modified_by` int(10) unsigned DEFAULT '0',
  `form_modified_at` datetime DEFAULT NULL,
  `form_checked_out` int(10) unsigned DEFAULT '0',
  `form_checked_out_time` datetime DEFAULT NULL,
  `form_submission_cout` int(11) NOT NULL,
  `form_last_submitted` datetime NOT NULL,
  `form_submitter` varchar(255) NOT NULL,
  `form_type` int(11) NOT NULL,
  `form_settings` longtext NOT NULL,
  `form_edit_submission` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_jsn_uniform_forms`
--

INSERT INTO `AM_jsn_uniform_forms` (`form_id`, `form_title`, `form_description`, `form_layout`, `form_theme`, `form_style`, `form_notify_submitter`, `form_post_action`, `form_post_action_data`, `form_captcha`, `form_state`, `form_access`, `form_created_by`, `form_created_at`, `form_modified_by`, `form_modified_at`, `form_checked_out`, `form_checked_out_time`, `form_submission_cout`, `form_last_submitted`, `form_submitter`, `form_type`, `form_settings`, `form_edit_submission`) VALUES
(1, 'JoomlaShine Survey', '', 'default', '', '{"layout":"Vertical","theme":"jsn-style-light","themes_style":{"light":"","dark":""},"themes":["light","dark"],"background_color":"","background_active_color":"","border_thickness":"0","border_color":"","border_active_color":"","rounded_corner_radius":"0","padding_space":"0","margin_space":"0","text_color":"","font_type":" Verdana, Geneva, sans-serif","font_size":"0","field_background_color":"","field_border_color":"","field_shadow_color":"","field_text_color":"","message_error_background_color":"","message_error_text_color":"","button_position":"btn-toolbar","button_submit_color":"btn btn-primary"}', 0, 4, 'Woo hoo! Thanks for filling out the form! Please use the code JSNPOLL5 to get $5 OFF when purchase any products from JoomlaShine. (Not applied with other promotions)', 1, 1, 1, 820, '2012-11-26 04:02:47', 42, '2013-09-09 16:22:14', 0, '0000-00-00 00:00:00', 1, '2013-09-09 16:23:07', '', 1, '{"form_btn_next_text":null,"form_btn_prev_text":null,"form_btn_submit_text":null}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_uniform_messages`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_uniform_messages` (
`msg_id` int(11) NOT NULL,
  `msg_screen` varchar(150) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_uniform_submission_data`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_uniform_submission_data` (
`submission_data_id` int(11) NOT NULL,
  `submission_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `field_type` varchar(45) NOT NULL,
  `submission_data_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_uniform_submissions`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_uniform_submissions` (
`submission_id` int(10) unsigned NOT NULL,
  `form_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `submission_ip` varchar(40) NOT NULL,
  `submission_country` varchar(45) NOT NULL,
  `submission_country_code` varchar(4) NOT NULL,
  `submission_browser` varchar(45) NOT NULL,
  `submission_browser_version` varchar(20) NOT NULL,
  `submission_browser_agent` varchar(255) NOT NULL,
  `submission_os` varchar(45) NOT NULL,
  `submission_created_by` int(10) unsigned NOT NULL COMMENT '0 = Guest',
  `submission_created_at` datetime NOT NULL,
  `submission_state` tinyint(1) unsigned NOT NULL COMMENT '-1 = Trashed; 0 = Unpublish; 1 = Published'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_uniform_submissions_1`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_uniform_submissions_1` (
  `data_id` int(11) DEFAULT NULL,
  `sb_3` varchar(255) DEFAULT NULL,
  `sb_4` varchar(255) DEFAULT NULL,
  `sb_5` varchar(255) DEFAULT NULL,
  `sb_6` varchar(255) DEFAULT NULL,
  `sb_7` text,
  `sb_8` text,
  `sb_9` varchar(255) DEFAULT NULL,
  `sb_10` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_jsn_uniform_submissions_1`
--

INSERT INTO `AM_jsn_uniform_submissions_1` (`data_id`, `sb_3`, `sb_4`, `sb_5`, `sb_6`, `sb_7`, `sb_8`, `sb_9`, `sb_10`) VALUES
(1, 'Freelancer building websites for clients ', '1-3 years ', 'Ninjaboard ', 'Whole Joomla! site installation package with sample data ', 'I love Joomlashine templates', 'I love Joomlashine templates', 'Mega menu ', '');

-- --------------------------------------------------------

--
-- Table structure for table `AM_jsn_uniform_templates`
--

CREATE TABLE IF NOT EXISTS `AM_jsn_uniform_templates` (
`template_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `template_notify_to` tinyint(1) NOT NULL COMMENT '0 = Send to submitter; 1 = Send to added emails',
  `template_from` varchar(75) NOT NULL,
  `template_reply_to` varchar(75) NOT NULL,
  `template_subject` varchar(255) NOT NULL,
  `template_message` longtext NOT NULL,
  `template_attach` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_jsn_uniform_templates`
--

INSERT INTO `AM_jsn_uniform_templates` (`template_id`, `form_id`, `template_notify_to`, `template_from`, `template_reply_to`, `template_subject`, `template_message`, `template_attach`) VALUES
(1, 1, 1, '', '', 'New answer for JoomlaShine survey - From Demo site', '', ''),
(2, 1, 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `AM_languages`
--

CREATE TABLE IF NOT EXISTS `AM_languages` (
`lang_id` int(11) unsigned NOT NULL,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_languages`
--

INSERT INTO `AM_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `AM_menu`
--

CREATE TABLE IF NOT EXISTS `AM_menu` (
`id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned DEFAULT NULL,
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=1089 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_menu`
--

INSERT INTO `AM_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 165, 0, '*', 0),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"1","link_titles":"","show_intro":"1","info_block_position":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"use_article","show_modify_date":"","show_publish_date":"","show_item_navigation":"1","show_vote":"0","show_readmore":"","show_readmore_title":"1","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"","show_tags":"","show_noauth":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"Start here...","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"jsn-demo-page","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 3, 4, 1, '*', 0),
(172, 'advanced-stuff', 'Easy to Start', 'easy-to-start', '', 'easy-to-start', 'index.php?option=com_content&view=article&id=5', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 45, 46, 0, '*', 0),
(173, 'advanced-stuff', 'Painless Configuration', 'painless-configuration', '', 'painless-configuration', 'index.php?option=com_content&view=article&id=39', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 0, '*', 0),
(174, 'advanced-stuff', 'RTL Support', 'rtl-support', '', 'rtl-support', 'index.php?option=com_content&view=article&id=41', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 49, 50, 0, '*', 0),
(175, 'advanced-stuff', 'Image Gallery', 'image-gallery', '', 'image-gallery', 'index.php?option=com_content&view=article&id=8', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 51, 52, 0, '*', 0),
(176, 'advanced-stuff', 'Docs / Support', 'docs-a-support', '', 'docs-a-support', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 53, 54, 0, '*', 0),
(177, 'advanced-stuff', 'Multilingual Support', 'multilingual-support', '', 'multilingual-support', 'index.php?option=com_content&view=article&id=32', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 55, 56, 0, '*', 0),
(178, 'footermenu', 'JoomlaShine', 'joomlashine', '', 'joomlashine', 'http://www.joomlashine.com', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 57, 58, 0, '*', 0),
(179, 'footermenu', 'Joomla Templates', 'joomla-templates', '', 'joomla-templates', 'http://www.joomlashine.com/joomla-templates.html', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 59, 60, 0, '*', 0),
(180, 'footermenu', 'Joomla Extensions', 'joomla-extensions', '', 'joomla-extensions', 'http://www.joomlashine.com/joomla-extensions.html', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 61, 62, 0, '*', 0),
(181, 'mustsee', 'Easy to start', '2011-11-25-07-20-55', '', '2011-11-25-07-20-55', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"172","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 63, 64, 0, '*', 0),
(182, 'mustsee', 'Painless Configuration', '2011-03-31-04-10-55', '', '2011-03-31-04-10-55', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"173","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 65, 66, 0, '*', 0),
(183, 'mainmenu', 'About Us', 'aboutus', '', 'aboutus', 'index.php?option=com_content&view=article&id=22', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"Over 40 positions...","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 5, 18, 0, '*', 0),
(184, 'mainmenu', 'Organizational Structure', 'left-center-right', '', 'aboutus/left-center-right', 'index.php?option=com_content&view=article&id=26', 'component', 1, 183, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 6, 7, 0, '*', 0),
(185, 'mainmenu', 'Vision', 'left-innerleft-center', '', 'aboutus/left-innerleft-center', 'index.php?option=com_content&view=article&id=27', 'component', 1, 183, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 8, 9, 0, '*', 0),
(186, 'mainmenu', 'Mission', 'left-center-innerright', '', 'aboutus/left-center-innerright', 'index.php?option=com_content&view=article&id=25', 'component', 1, 183, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 10, 11, 0, '*', 0),
(187, 'mainmenu', 'Center | Innerright | Right', 'center-innerright-right', '', 'aboutus/center-innerright-right', 'index.php?option=com_content&view=article&id=23', 'component', -2, 183, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 12, 13, 0, '*', 0),
(188, 'mainmenu', 'Innerleft | Center | Right', 'innerleft--center--right', '', 'aboutus/innerleft--center--right', 'index.php?option=com_content&view=article&id=24', 'component', -2, 183, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 14, 15, 0, '*', 0),
(189, 'mainmenu', 'Projects', 'main-content-only', '', 'aboutus/main-content-only', 'index.php?option=com_content&view=article&id=28', 'component', -2, 183, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 16, 17, 0, '*', 0),
(190, 'mainmenu', 'Projects', 'menu-styles', '', 'menu-styles', 'index.php?option=com_content&view=article&id=30', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"For efficient navigation\\u2026","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 19, 24, 0, '*', 0),
(191, 'mainmenu', 'Main Menu', 'main-menu', '', 'menu-styles/main-menu', 'index.php?option=com_content&view=article&id=29', 'component', 1, 190, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 20, 21, 0, '*', 0),
(192, 'mainmenu', 'Tree menu', 'tree-menu', '', 'menu-styles/tree-menu', 'index.php?option=com_content&view=article&id=44', 'component', 1, 190, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 22, 23, 0, '*', 0),
(193, 'mainmenu', 'Memberships', 'module-styles', '', 'module-styles', 'index.php?option=com_content&view=article&id=31', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"Make it clear and beautiful\\u2026","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 25, 28, 0, '*', 0),
(194, 'mainmenu', 'FAQ', 'download-now', '', 'download-now', 'http://www.joomlashine.com/joomla-templates/jsn-epic-download.html', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"Yes, it is free\\u2026","menu-anchor_css":"","menu_image":"","menu_text":1}', 1, 2, 0, '*', 0),
(195, 'mustsee', 'Layout', '2011-03-31-04-22-51', '', '2011-03-31-04-22-51', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"183","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 67, 68, 0, '*', 0),
(196, 'mustsee', 'Menu Styles', '2011-03-31-04-23-33', '', '2011-03-31-04-23-33', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"190","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 69, 70, 0, '*', 0),
(197, 'mustsee', 'Module Styles', '2011-03-31-04-24-11', '', '2011-03-31-04-24-11', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"193","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 71, 72, 0, '*', 0),
(198, 'mustsee', 'RTL Support', '2011-03-31-04-24-46', '', '2011-03-31-04-24-46', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"174","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 73, 74, 0, '*', 0),
(199, 'topmenu', 'Quick Tour', 'quick-tour', '', 'quick-tour', 'index.php?option=com_content&view=article&id=21', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 75, 76, 0, '*', 0),
(200, 'topmenu', 'Get it now', 'downloadnow', '', 'downloadnow', 'http://www.joomlashine.com/joomla-templates/jsn-epic-download.html', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 77, 78, 0, '*', 0),
(244, 'mainmenu', '#', '2012-11-20-02-37-18', '', 'module-styles/2012-11-20-02-37-18', 'Free Extensions', 'url', -2, 193, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"Extend website functionality","menu-anchor_css":"","menu_image":"","menu_text":1}', 26, 27, 0, '*', 0),
(245, 'mainmenu', 'Forum', '2012-11-20-02-38-33', '', '2012-11-20-02-38-33', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"Extend website functionality","menu-anchor_css":"","menu_image":"","menu_text":1}', 33, 42, 0, '*', 0),
(246, 'mainmenu', 'Image Gallery', 'image-gallery', '', '2012-11-20-02-38-33/image-gallery', 'index.php?option=com_content&view=article&id=8', 'component', 1, 245, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 34, 35, 0, '*', 0),
(258, 'mainmenu', 'Form Builder', 'form-builder', '', '2012-11-20-02-38-33/form-builder', 'index.php?option=com_content&view=article&id=58', 'component', 1, 245, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 38, 39, 0, '*', 0),
(332, 'mainmenu', 'Joomla Management', 'joomla-management', '', '2012-11-20-02-38-33/joomla-management', 'index.php?option=com_content&view=article&id=59', 'component', 1, 245, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 40, 41, 0, '*', 0),
(837, 'mainmenu', 'Website Mobilizing', 'website-mobilizing', '', '2012-11-20-02-38-33/website-mobilizing', 'index.php?option=com_content&view=article&id=60', 'component', 1, 245, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 36, 37, 0, '*', 0),
(1043, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 79, 88, 0, '*', 1),
(1044, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 1043, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 80, 81, 0, '*', 1),
(1045, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 1043, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 82, 83, 0, '*', 1),
(1046, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 1043, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 84, 85, 0, '*', 1),
(1047, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 1043, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 86, 87, 0, '*', 1),
(1048, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 89, 94, 0, '*', 1),
(1049, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 1048, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 90, 91, 0, '*', 1),
(1050, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 1048, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 92, 93, 0, '*', 1),
(1051, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 95, 100, 0, '*', 1),
(1052, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 1051, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 96, 97, 0, '*', 1),
(1053, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 1051, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 98, 99, 0, '*', 1),
(1054, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 101, 106, 0, '*', 1),
(1055, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1054, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 102, 103, 0, '*', 1),
(1056, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 1054, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 104, 105, 0, '*', 1),
(1057, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 107, 108, 0, '*', 1),
(1058, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 109, 110, 0, '*', 1),
(1059, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 111, 116, 0, '*', 1),
(1060, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 1059, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 112, 113, 0, '*', 1),
(1061, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 1059, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 114, 115, 0, '*', 1),
(1062, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 117, 118, 0, '*', 1),
(1063, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 119, 120, 0, '*', 1),
(1064, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 121, 122, 0, '', 1),
(1065, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 123, 124, 0, '*', 1),
(1066, 'main', 'COM_IMAGESHOW', 'com-imageshow', '', 'com-imageshow', 'index.php?option=com_imageshow', 'component', 0, 1, 1, 704, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-picture.png', 0, '', 125, 136, 0, '', 1),
(1067, 'main', 'LAUNCH_PAD', 'launch-pad', '', 'com-imageshow/launch-pad', 'index.php?option=com_imageshow', 'component', 0, 1066, 2, 704, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-off.png', 0, '', 126, 127, 0, '', 1),
(1068, 'main', 'SHOWLISTS', 'showlists', '', 'com-imageshow/showlists', 'index.php?option=com_imageshow&controller=showlist', 'component', 0, 1066, 2, 704, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-file.png', 0, '', 128, 129, 0, '', 1),
(1069, 'main', 'SHOWCASES', 'showcases', '', 'com-imageshow/showcases', 'index.php?option=com_imageshow&controller=showcase', 'component', 0, 1066, 2, 704, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-monitor.png', 0, '', 130, 131, 0, '', 1),
(1070, 'main', 'CONFIGURATION_AND_MAINTENANCE', 'configuration-and-maintenance', '', 'com-imageshow/configuration-and-maintenance', 'index.php?option=com_imageshow&controller=maintenance&type=configs', 'component', 0, 1066, 2, 704, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-cog.png', 0, '', 132, 133, 0, '', 1),
(1071, 'main', 'ABOUT', 'about', '', 'com-imageshow/about', 'index.php?option=com_imageshow&controller=about', 'component', 0, 1066, 2, 704, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-star.png', 0, '', 134, 135, 0, '', 1),
(1072, 'main', 'JSN_POWERADMIN_MENU_TEXT', 'jsn-poweradmin-menu-text', '', 'jsn-poweradmin-menu-text', 'index.php?option=com_poweradmin', 'component', 0, 1, 1, 717, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_poweradmin/assets/images/icons-16/icon-wrench.png', 0, '', 137, 146, 0, '', 1),
(1073, 'main', 'JSN_POWERADMIN_MENU_RAWMODE_TEXT', 'jsn-poweradmin-menu-rawmode-text', '', 'jsn-poweradmin-menu-text/jsn-poweradmin-menu-rawmode-text', 'index.php?option=com_poweradmin&view=rawmode', 'component', 0, 1072, 2, 717, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_poweradmin/assets/images/icons-16/icon-monitor.png', 0, '', 138, 139, 0, '', 1),
(1074, 'main', 'JSN_POWERADMIN_MENU_SITESEARCH_TEXT', 'jsn-poweradmin-menu-sitesearch-text', '', 'jsn-poweradmin-menu-text/jsn-poweradmin-menu-sitesearch-text', 'index.php?option=com_poweradmin&task=search.query', 'component', 0, 1072, 2, 717, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_poweradmin/assets/images/icons-16/icon-search.png', 0, '', 140, 141, 0, '', 1),
(1075, 'main', 'JSN_POWERADMIN_MENU_CONFIGURATION_TEXT', 'jsn-poweradmin-menu-configuration-text', '', 'jsn-poweradmin-menu-text/jsn-poweradmin-menu-configuration-text', 'index.php?option=com_poweradmin&view=configuration', 'component', 0, 1072, 2, 717, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_poweradmin/assets/images/icons-16/icon-cog.png', 0, '', 142, 143, 0, '', 1),
(1076, 'main', 'JSN_POWERADMIN_MENU_HELP_TEXT', 'jsn-poweradmin-menu-help-text', '', 'jsn-poweradmin-menu-text/jsn-poweradmin-menu-help-text', 'index.php?option=com_poweradmin&view=about', 'component', 0, 1072, 2, 717, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_poweradmin/assets/images/icons-16/icon-star.png', 0, '', 144, 145, 0, '', 1),
(1077, 'main', 'JSN_UNIFORM_MENU_TEXT', 'jsn-uniform-menu-text', '', 'jsn-uniform-menu-text', 'index.php?option=com_uniform', 'component', 0, 1, 1, 724, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniform/assets/images/icons-16/icon-uniform.png', 0, '', 147, 156, 0, '', 1),
(1078, 'main', 'JSN_UNIFORM_MENU_FORMS_TEXT', 'jsn-uniform-menu-forms-text', '', 'jsn-uniform-menu-text/jsn-uniform-menu-forms-text', 'index.php?option=com_uniform&view=forms', 'component', 0, 1077, 2, 724, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniform/assets/images/icons-16/icon-forms.png', 0, '', 148, 149, 0, '', 1),
(1079, 'main', 'JSN_UNIFORM_MENU_SUBMISSIONS_TEXT', 'jsn-uniform-menu-submissions-text', '', 'jsn-uniform-menu-text/jsn-uniform-menu-submissions-text', 'index.php?option=com_uniform&view=submissions', 'component', 0, 1077, 2, 724, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniform/assets/images/icons-16/icon-submissions.png', 0, '', 150, 151, 0, '', 1),
(1080, 'main', 'JSN_UNIFORM_MENU_CONFIGURATION_TEXT', 'jsn-uniform-menu-configuration-text', '', 'jsn-uniform-menu-text/jsn-uniform-menu-configuration-text', 'index.php?option=com_uniform&view=configuration', 'component', 0, 1077, 2, 724, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniform/assets/images/icons-16/icon-cog.png', 0, '', 152, 153, 0, '', 1),
(1081, 'main', 'JSN_UNIFORM_MENU_ABOUT_TEXT', 'jsn-uniform-menu-about-text', '', 'jsn-uniform-menu-text/jsn-uniform-menu-about-text', 'index.php?option=com_uniform&view=about', 'component', 0, 1077, 2, 724, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniform/assets/images/icons-16/icon-about.png', 0, '', 154, 155, 0, '', 1),
(1082, 'main', 'JSN_MOBILIZE_MENU_TEXT', 'jsn-mobilize-menu-text', '', 'jsn-mobilize-menu-text', 'index.php?option=com_mobilize', 'component', 0, 1, 1, 728, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_mobilize/assets/images/icon-mobilize.png', 0, '', 157, 164, 0, '', 1),
(1083, 'main', 'JSN_MOBILIZE_SUB_MENU_MOBILIZATION_TEXT', 'jsn-mobilize-sub-menu-mobilization-text', '', 'jsn-mobilize-menu-text/jsn-mobilize-sub-menu-mobilization-text', 'index.php?option=com_mobilize&view=profiles', 'component', 0, 1082, 2, 728, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_mobilize/assets/images/icons-16/icon-mobilize.png', 0, '', 158, 159, 0, '', 1),
(1084, 'main', 'JSN_MOBILIZE_SUB_MENU_CONFIGURARTION_TEXT', 'jsn-mobilize-sub-menu-configurartion-text', '', 'jsn-mobilize-menu-text/jsn-mobilize-sub-menu-configurartion-text', 'index.php?option=com_mobilize&view=configuration', 'component', 0, 1082, 2, 728, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_mobilize/assets/images/icons-16/icon-cog.png', 0, '', 160, 161, 0, '', 1),
(1085, 'main', 'JSN_MOBILIZE_SUB_MENU_ABOUT_TEXT', 'jsn-mobilize-sub-menu-about-text', '', 'jsn-mobilize-menu-text/jsn-mobilize-sub-menu-about-text', 'index.php?option=com_mobilize&view=about', 'component', 0, 1082, 2, 728, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_mobilize/assets/images/icons-16/icon-about.png', 0, '', 162, 163, 0, '', 1),
(1086, 'mainmenu', 'News', 'news', '', 'news', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"enable_category":"0","catid":"32","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 31, 32, 0, '*', 0),
(1087, 'mainmenu', 'Publications', 'publications', '', 'publications', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"enable_category":"0","catid":"32","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 30, 0, '*', 0),
(1088, 'mainmenu', 'Vacancy', 'vacancy', '', 'vacancy', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"enable_category":"0","catid":"32","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 43, 44, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `AM_menu_types`
--

CREATE TABLE IF NOT EXISTS `AM_menu_types` (
`id` int(10) unsigned NOT NULL,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_menu_types`
--

INSERT INTO `AM_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'topmenu', 'Top Menu', ''),
(3, 'mustsee', 'Must-see Stuff', ''),
(4, 'footermenu', 'Footer Menu', ''),
(5, 'advanced-stuff', 'Advanced Stuff', '');

-- --------------------------------------------------------

--
-- Table structure for table `AM_messages`
--

CREATE TABLE IF NOT EXISTS `AM_messages` (
`message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `AM_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_modules`
--

CREATE TABLE IF NOT EXISTS `AM_modules` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_modules`
--

INSERT INTO `AM_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(77, 0, 'Banners', '', '', 0, 'banner', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_banners', 1, 0, '{"target":"1","count":"1","cid":"1","catid":["53"],"tag_search":"0","ordering":"random","header_text":"","footer_text":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(78, 0, 'Banners', '', '', 0, 'banner', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_banners', 1, 0, '{"target":"1","count":"1","cid":"0","catid":["53"],"tag_search":"0","ordering":"random","header_text":"","footer_text":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(79, 0, 'dfghdfgfd', '', '', 0, 'banner', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(80, 213, 'Joomla! Copyright', '', '<p>The Joomla! name is used under a limited license from Open Source Matters in the United States and other countries. JoomlaShine.com is not affiliated with or endorsed by Open Source Matters or the Joomla! Project.</p>', 1, 'bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(81, 0, 'Breadcrumbs', '', '', 1, 'breadcrumbs', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"0","showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(82, 202, 'Easy to start', '', '<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/easy-start/easy-start-banner.jpg" alt="Easy to start" width="100" height="100" class="image-left image-border" />JSN Epic provides  unique mechanism of installing sample data on directly your current website. Just  few clicks and the demo website is here.</p>\n<p><a href="index.php?option=com_content&amp;view=article&amp;id=5&amp;Itemid=172" class="link-action">Read more...</a></p>', 1, 'content-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(83, 203, 'Docs / Support', '', '<p><img class="image-left image-border" src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/docs-support/docs-support-banner.jpg" border="0" alt="Docs / Support" width="100" height="100" />In addition to comprehensive documentations in PDF format, you also get support from friendly forum and dedicated support system.</p>\n<p><a class="link-action" href="index.php?option=com_content&amp;view=article&amp;id=3&amp;Itemid=176">Read more...</a></p>', 1, 'content-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(84, 201, 'Native RTL Support', '', '<p><img class="image-border image-left" src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/rtl-support/rtl-support-banner.jpg" border="0" alt="Native RTL Support" width="100" height="100" />Native RTL support means that every elements on the page is mirror swapped including layout, menus, typography, icons...everything.</p>\n<p><a class="link-action" href="index.php?option=com_content&amp;view=article&amp;id=41&amp;Itemid=172">Read more...</a></p>', 1, 'content-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(85, 0, 'Footer Menu', '', '', 0, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 0, '{"menutype":"footermenu","startLevel":"1","endLevel":"1","showAllChildren":"0","tag_id":"","class_sfx":"menu-divmenu","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(86, 212, 'JoomlaShine copyright', '', '<p>Copyright © 2008 - 2013 JoomlaShine.com. All rights reserved. To see more feature of this template, please check out  JSN Epic PRO edition </p>\r\n<p>All stock photos used on this JSN Epic demo site are only for demo purposes and not included in the template package.</p>', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(87, 0, 'Position "innerleft"', '', '<p>This is sample module in position <strong>innerleft</strong>. The whole position will be collapsed, if there are no modules published.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>', 1, 'innerleft', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(88, 0, 'Position "innerright"', '', '<p>This is sample module in position <strong>innerright</strong>. The whole position will be collapsed, if there are no modules published.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>', 1, 'innerright', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(89, 0, 'Position "left"', '', '<p>This is a sample module in position <strong>left</strong>. The whole position will be collapsed, if there are no modules published.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"box-grey","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(90, 0, 'Docs Download', '', '<p>Full details about all template features can be found in comprehensive documentation package available for free download.</p>\n<p class="content-center"><a href="http://www.joomlashine.com/joomla-templates/jsn-epic-docs.zip" class="link-action">Download documentation</a></p>', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"box-yellow","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(91, 0, 'JSN ImageShow Replacement', '', '<a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" target="_blank" style="display: block; height: 300px; background: url(http://demo.joomlashine.com/joomla-templates/jsn_epic/images/extensions/custom-html/jsn-imageshow-promo/jsn-imageshow-promo.jpg) center center no-repeat;"></a>', 1, 'promo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 194, 'Why choose JSN Epic?', '', '<p>If you are looking for a clean and professional business template, the solution is right here.</p>\r\n<p>In 5 minutes you will see how JSN Epic can be the perfect template for your business website.</p>\r\n<p class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=21&amp;Itemid=199"><strong>Take a quick tour</strong></a></p>', 1, 'promo-right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 0, '"RichBox 1" Style', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\n<p>Module Class Suffix:<br />\n  <strong>&quot;richbox-1&quot;</strong></p>', 5, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"richbox-1","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(94, 192, 'Docs Download', '', '<p>Full details about all template features can be found in comprehensive documentation package available for free download.</p>\r\n<p class="content-center"><a href="http://www.joomlashine.com/joomla-templates/jsn-epic-docs.zip" class="link-action">Download documentation</a></p>', 1, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box-yellow","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 0, 'Position "right"', '', '<p>This is sample module in position <strong>right</strong>. The whole position will be collapsed, if there are no modules published.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>', 5, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box-yellow","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(96, 0, 'Position "stick-leftbottom"', '', '<a><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/position-stick-x/position-stick-leftbottom.png" width="65" height="190" alt="Sample module in position -stick-leftbottom-" /></a>', 1, 'stick-leftbottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(97, 0, 'Position "stick-leftmiddle"', '', '<a><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/position-stick-x/position-stick-leftmiddle.png" width="65" height="190" alt="Sample module in position -stick-leftmiddle-" /></a>', 1, 'stick-leftmiddle', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(98, 0, 'Position "stick-lefttop"', '', '<a><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/position-stick-x/position-stick-lefttop.png" width="65" height="190" alt="Sample module in position -stick-lefttop-" /></a>', 1, 'stick-lefttop', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(99, 0, 'See other templates', '', '<a rel="{handler: ''iframe'', size: {x: 640, y: 510}}" href="http://www.joomlashine.com/free-joomla-templates-promo.html" class="modal link-tooltip" style="z-index: 90;"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/see-other-templates/see-other-templates-banner.png" width="120" height="120" alt="See other templates" /><span style="left: -90px; top: -260px"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/see-other-templates/see-other-templates-banner-text.png" width="200" height="200" alt="See other templates" /></span></a>', 1, 'stick-rightbottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(100, 0, 'Position "stick-rightmiddle"', '', '<a><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/position-stick-x/position-stick-rightmiddle.png" width="65" height="190" alt="Sample module in position -stickrightmiddle-" /></a>', 1, 'stick-rightmiddle', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(101, 0, 'Position "stick-righttop"', '', '<a><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/position-stick-x/position-stick-righttop.png" width="65" height="190" alt="Sample module in position -righttop-" /></a>', 1, 'stick-righttop', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(102, 0, 'See PRO edition', '', '<a href="http://demo.joomlashine.com/joomla-templates/jsn-epic.html" class="link-tooltip" style="z-index: 90;"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/pro-edition/pro-edition-banner.png" width="120" height="120" alt="See PRO edition" /><span style="left: -120px; top: -20px"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/pro-edition/pro-edition-banner-text.png" width="240" height="250" alt="See PRO edition" /></span></a>', 2, 'stick-righttop', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(103, 0, 'Plain Style', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\n<p>Module Class Suffix:<br />\n  <em>empty</em></p>', 1, 'user-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(104, 0, 'Plain Style', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\n<p>Module Class Suffix:<br />\n  <em>empty</em></p>', 1, 'user-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(105, 0, '"Blue Box" Style', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\n<p>Module Class Suffix:<br />\n  <strong>&quot;box-blue&quot;</strong></p>', 1, 'user-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"box-blue","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(106, 199, 'Versatile Layout', '', '<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/versatile-layout/layout-banner.jpg" alt="Versatile Layout" class="image-border" /></p>\n<p>JSN Epic provides <strong>36 module positions</strong> allowing you to have multiple layout configurations.</p>\n<p><a href="index.php?option=com_content&amp;view=article&amp;id=22&amp;Itemid=183" class="link-action">More about layout...</a></p>', 1, 'user-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(107, 0, '"RichBox 2" Style', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\n<p>Module Class Suffix:<br />\n  <strong>&quot;richbox-2&quot;</strong></p>', 7, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"richbox-2","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(108, 200, 'Multiple Module Styles', '', '<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/module-styles/colors-banner.jpg" alt="Multiple Module Styles" class="image-border" /></p>\n<p>With JSN Epic you can decorate modules with <strong>4 appealing module styles</strong> in any positions.</p>\n<p><a href="index.php?option=com_content&amp;view=article&amp;id=31&amp;Itemid=193" class="link-action">More about module styles...</a></p>', 1, 'user-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(109, 0, 'Footer Menu', '', '', 2, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 0, '{"menutype":"footermenu","startLevel":"1","endLevel":"1","showAllChildren":"0","tag_id":"","class_sfx":"menu-divmenu","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(110, 0, 'Tree Menu with rich text', '', '', 0, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"menu-treemenu menu-iconmenu menu-richmenu","window_open":"","layout":"_:default","moduleclass_sfx":"box-yellow","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(111, 0, 'Must-see Stuff', '', '', 2, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mustsee","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"menu-treemenu","window_open":"","layout":"_:default","moduleclass_sfx":"box-grey","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(112, 0, 'Side Menu', '', '', 0, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"10","showAllChildren":"1","tag_id":"","class_sfx":"menu-sidemenu","window_open":"","layout":"_:default","moduleclass_sfx":"box-yellow","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(113, 0, 'J! Stuff', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"2","endLevel":"10","showAllChildren":"1","tag_id":"","class_sfx":"menu-sidemenu","window_open":"","layout":"_:default","moduleclass_sfx":"box-blue","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(114, 193, 'Main Menu', '', '', 1, 'mainmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"menu-mainmenu","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(115, 0, 'Tree Menu', '', '', 3, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"menu-treemenu","window_open":"","layout":"_:default","moduleclass_sfx":"box-grey","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(116, 191, 'Menu', '', '', 1, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"2","endLevel":"3","showAllChildren":"0","tag_id":"","class_sfx":"menu-treemenu","window_open":"","layout":"_:default","moduleclass_sfx":"box-grey","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(117, 0, 'Advanced Stuff', '', '', 6, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"advanced-stuff","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"menu-treemenu ","window_open":"","layout":"_:default","moduleclass_sfx":"box-grey","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(118, 187, 'Top Menu', '', '', 1, 'top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"topmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"menu-topmenu","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(119, 0, 'Who''s Online', '', '', 4, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_whosonline', 1, 1, '{"showmode":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","filter_groups":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(120, 0, 'Main Menu (Icons & Rich Text)', '', '', 1, 'mainmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"menu-mainmenu menu-iconmenu menu-richmenu","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(121, 198, 'Native Compatibility', '', '<p class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=57&amp;Itemid=176"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/native-compatibility/j25-j3x-promo.png" width="170" height="50" alt="Joomla! 2.5 - Get more" /></a></p>\r\n<p>JSN Epic is natively compatible with both <strong>Joomla! 2.5 and Joomla! 3.x</strong>.</p>\r\n<p>The installation package is compatible with both Joomla CMS.</p>', 2, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box-yellow","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(126, 0, 'Built with JSN PowerAdmin', '', '<a href="http://www.joomlashine.com/joomla-extensions/jsn-poweradmin.html" target="_blank" class="link-tooltip" style="z-index: 90;"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/built-with-poweradmin/built-with-poweradmin-banner.png" width="120" height="120" alt="Built with JSN PowerAdmin" /><span style="top: -260px"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/built-with-poweradmin/built-with-poweradmin-banner-text.png" width="200" height="200" alt="Built with JSN PowerAdmin" style="max-width: none;" /></span></a>', 1, 'stick-leftbottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(127, 0, 'Position "content-top"', '', '<p>This is a sample module in position <strong>&ldquo;content-top&rdquo;</strong>. All modules in this position will be arranged in <strong>horizontal row</strong>. The whole position will be collapsed, if there are no modules published.</p>\n', 1, 'content-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(128, 0, 'Position "content-top"', '', '<p>This is a sample module in position <strong>&ldquo;content-top&rdquo;</strong>. All modules in this position will be arranged in <strong>horizontal row</strong>. The whole position will be collapsed, if there are no modules published.</p>\n', 1, 'content-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(129, 0, 'Position "user1"', '', '<p>This is a sample module in position <strong>&ldquo;user1&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(130, 0, 'Position "user2"', '', '<p>This is a sample module in position <strong>&ldquo;user2&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(131, 0, 'Position "user3"', '', '<p>This is a sample module in position <strong>&ldquo;user3&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(132, 0, 'Position "user4"', '', '<p>This is a sample module in position <strong>&ldquo;user4&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(133, 0, 'Position "user5"', '', '<p>This is a sample module in position <strong>&ldquo;user5&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(134, 0, 'Position "user7"', '', '<p>This is a sample module in position <strong>&ldquo;user7&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column row</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(135, 0, 'Position "user6"', '', '<p>This is a sample module in position <strong>&ldquo;user6&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(136, 214, 'Layout Variations', '', '<div class="grid-layout" style="margin-top: 10px">\r\n	<div class="content-center"><a href="index.php?option=com_content&view=article&id=26&Itemid=184" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/layout-variations/layout-thumb-lcr.png" width="160" height="90" alt="Left | Center | Right" style="vertical-align: middle;" class="margin-right" /><br />\r\n		Left | Center | Right</a></div>\r\n	<div class="content-center"><a href="index.php?option=com_content&view=article&id=28&Itemid=189" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/layout-variations/layout-thumb-mc.png" width="160" height="90" alt="Main content only" style="vertical-align: middle;" class="margin-right" /><br />\r\n		Main content only</a></div>\r\n</div>\r\n<div class="grid-layout" style="margin-top: 10px">\r\n	<div class="content-center"><a href="index.php?option=com_content&view=article&id=25&Itemid=186" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/layout-variations/layout-thumb-lcir.png" width="160" height="90" alt="Left | Center | InnerRight" style="vertical-align: middle;" class="margin-right" /><br />\r\n		Left | Center | InnerRight</a></div>\r\n	<div class="content-center"><a href="index.php?option=com_content&view=article&id=24&Itemid=188" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/layout-variations/layout-thumb-ilcr.png" width="160" height="90" alt="InnerLeft | Center | Right" style="vertical-align: middle;" class="margin-right" /><br />\r\n		InnerLeft | Center | Right</a></div>\r\n</div>\r\n<div class="grid-layout" style="margin-top: 10px">\r\n	<div class="content-center"><a href="index.php?option=com_content&view=article&id=27&Itemid=185" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/layout-variations/layout-thumb-lilc.png" width="160" height="90" alt="Left | Center | InnerRight" style="vertical-align: middle;" class="margin-right" /><br />\r\n		Left | InnerLeft | Center</a></div>\r\n	<div class="content-center"><a href="index.php?option=com_content&view=article&id=23&Itemid=187" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/layout-variations/layout-thumb-cirr.png" width="160" height="90" alt="Left | Center | Right" style="vertical-align: middle;" class="margin-right" /><br />\r\n		Center | InnerRight | Right</a></div>\r\n</div>\r\n', 1, 'user-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(138, 0, 'Demo Builder Button', '', '<style>\r\ndiv#jsn-demo-builder-toggle {\r\n    position: absolute;\r\n    width: 580px;\r\n    left: -495px;\r\n    transition: all 0.6s ease;\r\n    -moz-transition: all 0.6s ease;\r\n    -webkit-transition: all 0.6s ease;\r\n}\r\ndiv#jsn-demo-builder-toggle > a:hover:not(.active) {\r\n    left: -490px;\r\n}\r\ndiv#jsn-demo-builder-toggle.active {\r\n    left: 0;\r\n}\r\ndiv#jsn-demo-builder-toggle > div,\r\ndiv#jsn-demo-builder-toggle > a {\r\n    float: left;\r\n    cursor: default;\r\n}\r\ndiv#jsn-demo-builder-toggle > a {\r\n    overflow: hidden;\r\n}\r\ndiv#jsn-demo-builder-toggle > a img {\r\n    position: relative;\r\n    left: -5px;\r\n    transition: all 0.3s ease;\r\n    -moz-transition: all 0.3s ease;\r\n    -webkit-transition: all 0.3s ease;\r\n    cursor: pointer;\r\n}\r\ndiv#jsn-demo-builder-toggle > a img:hover,\r\ndiv#jsn-demo-builder-toggle > a.active img {\r\n    left: 0;\r\n}\r\ndiv#jsn-demo-builder-toggle > div > iframe {\r\n    background: #fff url(http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/db-loading.gif) center center no-repeat;\r\n    border-top: solid 10px #434448;\r\n    border-right: solid 10px #434448;\r\n    border-bottom: solid 10px #434448;\r\n    border-left: none;\r\n    border-bottom-right-radius: 5px;\r\n}\r\ndiv#jsn-demo-builder-toggle {\r\n    margin: 0;\r\n    padding: 0;\r\n}\r\n</style>\r\n<div id="jsn-demo-builder-toggle">\r\n    <div id="jsn-demo-builder-wrapper">\r\n        <iframe id="jsn-demo-builder-iframe" width="480px" height="590"></iframe>\r\n    </div>\r\n    <a id="jsn-demo-builder-button" href="javascript:void(0);">\r\n        <img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/extensions/custom-html/demo_builder_button_black.png" alt="Demo Builder Toggle" />\r\n    </a>\r\n</div>\r\n<script type="text/javascript">\r\n    var demoButton = document.getElementById("jsn-demo-builder-button");\r\n    demoButton.addEventListener("click", function() {\r\n        this.classList.toggle("active");\r\n        \r\n        var outDiv = document.getElementById("jsn-demo-builder-toggle");\r\n        outDiv.classList.toggle("active");\r\n\r\n        // Only load the iframe if the button is clicked as active and the iframe is not loaded\r\n        if (this.classList.contains("active") && !outDiv.classList.contains("iframeloaded")) {\r\n            // Load the iframe\r\n            document.getElementById("jsn-demo-builder-iframe").src = "http://myjoomlashine.com/demo-builder/index.php?template=epic";\r\n        }\r\n\r\n        // Add an indicator that the iframe has been loaded, no reload if click the button again and again\r\n        outDiv.classList.add("iframeloaded")\r\n    }, false);\r\n</script>', 1, 'stick-lefttop', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(139, 0, 'JSN imageshow Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imageshow', 1, 1, '', 0, '*'),
(141, 186, 'JSN Imageshow module', '', '', 1, 'promo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imageshow', 1, 0, '{"moduleclass_sfx":"homepage-slideshow","showlist_id":"1","showcase_id":"1","width":"100%","height":"540","pretext":"","posttext":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(142, 0, 'JSN UniForm Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_uniform', 1, 1, '', 0, '*'),
(144, 0, 'Reviews on JED', '', '<p>JSN UniForm has been <strong>approved on Joomla Extension Directory</strong>. Let''s see how Joomla community enjoy it. If you use JSN UniForm, please post a rating and a review at the <a href="http://www.joomlashine.com/joomla-extensions/jsn-uniform-on-jed.html" target="_blank">Joomla! Extensions Directory</a></p>\r\n', 4, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"richbox-2","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(145, 0, 'JSN imageshow Module', '', '', 0, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imageshow', 1, 1, '{"moduleclass_sfx":"","showlist_id":"2","showcase_id":"5","width":"","height":"","pretext":"","posttext":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(146, 0, 'Free Joomla! Ebook', '', '<a href="http://www.joomlashine.com/index.php?option=com_lightcart&view=sharemessage&layout=askbefore&tmpl=component&utm_source=demo.joomlashine.com%20&utm_medium=banner&utm_campaign=Joomla%2B3.0%2BMade%2BEasy"><img src="http://demo.joomlashine.com/joomla-templates/jsn_epic/free/images/banners/banner-joomla-30-made-easy.jpg" alt="Free Joomla ebook | Joomla 3.0 Made Easy" /></a>', 3, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(147, 195, 'Position "promo"', '', '<div style="height: 204px; background: url(''http://demo.joomlashine.com/joomla-templates/jsn_epic/images/extensions/custom-html/position-promo/position-promo.jpg'') center center no-repeat;"> </div>', 1, 'promo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(148, 196, 'Position "promo-left"', '', '<p>This is a sample module in position <strong>&ldquo;promo-left&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'promo-left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(149, 197, 'Position "promo-right"', '', '<p>This is a sample module in position <strong>&ldquo;promo-right&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'promo-right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(150, 204, 'JSN Epic Custom Assets', '', '<div style="display:none;">\r\n<img src="media/joomlashine/jsn-epic/backgrounds/street.jpg" alt="" />\r\n<img src="media/joomlashine/jsn-epic/backgrounds/tablet.jpg" alt="" />\r\n<img src="media/joomlashine/jsn-epic/backgrounds/forest.jpg" alt="" />\r\n<img src="media/joomlashine/jsn-epic/backgrounds/mac.jpg" alt="" />\r\n<img src="media/joomlashine/jsn-epic/backgrounds/skycrapper.jpg" alt="" />\r\n<img src="media/joomlashine/jsn-epic/backgrounds/cloudsea.jpg" alt="" />\r\n<img src="media/joomlashine/jsn-epic/backgrounds/workingdesk.jpg" alt="" />\r\n<img src="media/joomlashine/jsn-epic/backgrounds/our-work-bg.jpg" alt="" />\r\n<img src="media/joomlashine/jsn-epic/backgrounds/bridge.jpg" alt="" />\r\n<img src="media/joomlashine/jsn-epic/custom-html/responsive-intro/iphone.png" alt="" />\r\n</div>', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(151, 205, 'About us', '', '<div id="demo-about-us">\r\n	<h3 class="main-heading"><span>About Us</span></h3>\r\n	<p class="main-heading-desc">We are from Earth. We create awesome designs that work great on many environments.</p>\r\n\r\n	<div id="aboutus-tabs">\r\n		<ul class="tab-title">\r\n			<li><a href="#tabs1" title="">History</a></li>\r\n			<li><a href="#tabs2" title="">Team</a></li>\r\n			<li><a href="#tabs3" title="">Awards</a></li>\r\n		</ul>\r\n\r\n		<div id="tabs_container">\r\n\r\n			<div id="tabs1">\r\n				<p>1. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.</p>\r\n			</div>\r\n\r\n			<div id="tabs2">\r\n				<p>2. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.</p>\r\n			</div>\r\n\r\n			<div id="tabs3">\r\n				<p>3. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.</p>\r\n			</div>\r\n\r\n		</div>\r\n	</div>\r\n</div>', 0, 'content-top-below', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(152, 206, 'Our Services', '', '<div id="demo-our-services">\r\n	<h3 class="main-heading"><span>Our Services</span></h3>\r\n	<div class="ourservice-grid grid-layout">\r\n		<div class="ourservice-item">\r\n			<div class="icon">\r\n				<a href="#"><img class="icon-img" src="media/joomlashine/jsn-epic/icons/icon-dev.png" alt="" /></a>\r\n			</div>\r\n			<div class="content">\r\n				<h3 class="heading">Development</h3>\r\n				<p class="desc">Lorem ipsum dolor sit amet consectetuer adipiscing</p>\r\n			</div>\r\n		</div>\r\n		<div class="ourservice-item">\r\n			<div class="icon">\r\n				<a href="#"><img class="icon-img" src="media/joomlashine/jsn-epic/icons/icon-manage.png" alt="" /></a>\r\n			</div>\r\n			<div class="content">\r\n				<h3 class="heading">Management</h3>\r\n				<p class="desc">Lorem ipsum dolor sit amet consectetuer adipiscing</p>\r\n			</div>\r\n		</div>\r\n		<div class="ourservice-item">\r\n			<div class="icon">\r\n				<a href="#"><img class="icon-img" src="media/joomlashine/jsn-epic/icons/icon-research.png" alt="" /></a>\r\n			</div>\r\n			<div class="content">\r\n				<h3 class="heading">Researching</h3>\r\n				<p class="desc">Lorem ipsum dolor sit amet consectetuer adipiscing</p>\r\n			</div>\r\n		</div>\r\n		<div class="ourservice-item">\r\n			<div class="icon">\r\n				<a href="#"><img class="icon-img" src="media/joomlashine/jsn-epic/icons/icon-target.png" alt="" /></a>\r\n			</div>\r\n			<div class="content">\r\n				<h3 class="heading">Target</h3>\r\n				<p class="desc">Lorem ipsum dolor sit amet consectetuer adipiscing</p>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>', 1, 'content-top-below', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"our-services","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');
INSERT INTO `AM_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(153, 207, 'Responsive Intro', '', '<div id="demo-responsive-intro">\r\n	<div class="grid-layout">\r\n		<div class="iphone">\r\n			<div class="iphone-wrapper">\r\n				<ul id="demo-responsiveintro-slider">\r\n					<li><img src="media/joomlashine/jsn-epic/custom-html/responsive-intro/1.jpg" /></li>\r\n					<li><img src="media/joomlashine/jsn-epic/custom-html/responsive-intro/2.jpg" /></li>\r\n					<li><img src="media/joomlashine/jsn-epic/custom-html/responsive-intro/3.jpg" /></li>\r\n					<li><img src="media/joomlashine/jsn-epic/custom-html/responsive-intro/4.jpg" /></li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n		<div class="text">\r\n			<div class="item">\r\n				<h3 class="heading">Fully Responsive</h3>\r\n				<p class="desc">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat</p>\r\n			</div>\r\n			<div class="item">\r\n				<h3 class="heading">Modern Design</h3>\r\n				<p class="desc">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat</p>\r\n			</div>\r\n			<div class="item">\r\n				<h3 class="heading">Easy to Use</h3>\r\n				<p class="desc">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat</p>\r\n			</div>\r\n		</div>\r\n	</div>\r\n\r\n\r\n</div>', 2, 'content-top-below', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"responsive-intro","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(154, 208, 'Our Work', '', '<div id="demo-our-work">\r\n	<h3 class="main-heading"><span>Our Work</span></h3>\r\n	<div class="grid-layout">\r\n		<div class="item">\r\n			<a class="prj modal link-tooltip" rel="{handler: ''iframe'', size: {x: 560, y: 560}}" href="media/joomlashine/jsn-epic/custom-html/our-work/1.jpg">\r\n				<img src="media/joomlashine/jsn-epic/custom-html/our-work/1.jpg" alt="" />\r\n				<p class="desc">Demo Project</p>\r\n			</a>\r\n		</div>\r\n		<div class="item">\r\n			<a class="prj modal link-tooltip" rel="{handler: ''iframe'', size: {x: 560, y: 560}}" href="media/joomlashine/jsn-epic/custom-html/our-work/2.jpg">\r\n				<img src="media/joomlashine/jsn-epic/custom-html/our-work/2.jpg" alt="" />\r\n				<p class="desc">Demo Project</p>\r\n			</a>\r\n		</div>\r\n		<div class="item">\r\n			<a class="prj modal link-tooltip" rel="{handler: ''iframe'', size: {x: 560, y: 560}}" href="media/joomlashine/jsn-epic/custom-html/our-work/3.jpg">\r\n				<img src="media/joomlashine/jsn-epic/custom-html/our-work/3.jpg" alt="" />\r\n				<p class="desc">Demo Project</p>\r\n			</a>\r\n		</div>\r\n	</div>\r\n	<div class="grid-layout">\r\n		<div class="item">\r\n			<a class="prj modal link-tooltip" rel="{handler: ''iframe'', size: {x: 560, y: 560}}" href="media/joomlashine/jsn-epic/custom-html/our-work/4.jpg">\r\n				<img src="media/joomlashine/jsn-epic/custom-html/our-work/4.jpg" alt="" />\r\n				<p class="desc">Demo Project</p>\r\n			</a>\r\n		</div>\r\n		<div class="item">\r\n			<a class="prj modal link-tooltip" rel="{handler: ''iframe'', size: {x: 560, y: 560}}" href="media/joomlashine/jsn-epic/custom-html/our-work/5.jpg">\r\n				<img src="media/joomlashine/jsn-epic/custom-html/our-work/5.jpg" alt="" />\r\n				<p class="desc">Demo Project</p>\r\n			</a>\r\n		</div>\r\n		<div class="item">\r\n			<a class="prj modal link-tooltip" rel="{handler: ''iframe'', size: {x: 560, y: 560}}" href="media/joomlashine/jsn-epic/custom-html/our-work/6.jpg">\r\n				<img src="media/joomlashine/jsn-epic/custom-html/our-work/6.jpg" alt="" />\r\n				<p class="desc">Demo Project</p>\r\n			</a>\r\n		</div>\r\n	</div>\r\n	<div class="grid-layout">\r\n		<div class="item">\r\n			<a class="prj modal link-tooltip" rel="{handler: ''iframe'', size: {x: 560, y: 560}}" href="media/joomlashine/jsn-epic/custom-html/our-work/7.jpg">\r\n				<img src="media/joomlashine/jsn-epic/custom-html/our-work/7.jpg" alt="" />\r\n				<p class="desc">Demo Project</p>\r\n			</a>\r\n		</div>\r\n		<div class="item">\r\n			<a class="prj modal link-tooltip" rel="{handler: ''iframe'', size: {x: 560, y: 560}}" href="media/joomlashine/jsn-epic/custom-html/our-work/8.jpg">\r\n				<img src="media/joomlashine/jsn-epic/custom-html/our-work/8.jpg" alt="" />\r\n				<p class="desc">Demo Project</p>\r\n			</a>\r\n		</div>\r\n		<div class="item">\r\n			<a class="prj modal link-tooltip" rel="{handler: ''iframe'', size: {x: 560, y: 560}}" href="media/joomlashine/jsn-epic/custom-html/our-work/9.jpg">\r\n				<img src="media/joomlashine/jsn-epic/custom-html/our-work/9.jpg" alt="" />\r\n				<p class="desc">Demo Project</p>\r\n			</a>\r\n		</div>\r\n	</div>\r\n</div>', 3, 'content-top-below', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"our-work","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(155, 209, 'Custom Promo', '', '<div class="demo-custom-promo-wrapper">\r\n	<p class="desc">A professional template for <span class="mark">multi-purposes</span>, especially Business/Portfolio websites</p>\r\n</div>', 4, 'content-top-below', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"custom-promo-1","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(156, 210, 'Testimonials and Partners', '', '<div id="demo-testimonials-wrapper">\r\n		<div class="testimonials">\r\n			<h3 class="main-heading"><span>Testimonials</span></h3>\r\n			<ul id="testimonials-slider">\r\n				<li>\r\n					<div class="slide-item">\r\n							<div class="person">\r\n								<div class="avatar">\r\n									<img src="media/joomlashine/jsn-epic/custom-html/testimonials/1.jpg" alt="" />\r\n								</div>\r\n							</div>\r\n							<div class="text">\r\n								<p>Aenean interdum ultricies justo, ut vehicula erat dignissim ac. Aliquam condimentum lectus libero, eu semper arcu eleifend quis lectus libero ut vehicula erat</p>\r\n								<p class="desc">− Designer</p>\r\n							</div>\r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class="slide-item">\r\n							<div class="person">\r\n								<div class="avatar">\r\n									<img src="media/joomlashine/jsn-epic/custom-html/testimonials/2.jpg" alt="" />\r\n								</div>\r\n							</div>\r\n							<div class="text">\r\n								<p>Aenean interdum ultricies justo, ut vehicula erat dignissim ac. Aliquam condimentum lectus libero, eu semper arcu eleifend quis lectus libero ut vehicula erat</p>\r\n								<p class="desc">− Entrepreneur</p>\r\n							</div>\r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class="slide-item">\r\n							<div class="person">\r\n								<div class="avatar">\r\n									<img src="media/joomlashine/jsn-epic/custom-html/testimonials/3.jpg" alt="" />\r\n								</div>\r\n							</div>\r\n							<div class="text">\r\n								<p>Aenean interdum ultricies justo, ut vehicula erat dignissim ac. Aliquam condimentum lectus libero, eu semper arcu eleifend quis lectus libero ut vehicula erat</p>\r\n								<p class="desc">− Artist</p>\r\n							</div>\r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class="slide-item">\r\n							<div class="person">\r\n								<div class="avatar">\r\n									<img src="media/joomlashine/jsn-epic/custom-html/testimonials/4.jpg" alt="" />\r\n								</div>\r\n							</div>\r\n							<div class="text">\r\n								<p>Aenean interdum ultricies justo, ut vehicula erat dignissim ac. Aliquam condimentum lectus libero, eu semper arcu eleifend quis lectus libero ut vehicula erat</p>\r\n								<p class="desc">− Actress</p>\r\n							</div>\r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class="slide-item">\r\n							<div class="person">\r\n								<div class="avatar">\r\n									<img src="media/joomlashine/jsn-epic/custom-html/testimonials/5.jpg" alt="" />\r\n								</div>\r\n							</div>\r\n							<div class="text">\r\n								<p>Aenean interdum ultricies justo, ut vehicula erat dignissim ac. Aliquam condimentum lectus libero, eu semper arcu eleifend quis lectus libero ut vehicula erat</p>\r\n								<p class="desc">− Writer</p>\r\n							</div>\r\n					</div>\r\n				</li>\r\n			</ul>\r\n		</div>\r\n</div>', 5, 'content-top-below', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"testimobials-partners","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(157, 211, 'JSN Epic Custom Assets', '', '<div style="display:none;">\r\n<img src="media/joomlashine/jsn-epic/backgrounds/street.jpg" alt="" />\r\n<img src="media/joomlashine/jsn-epic/backgrounds/tablet.jpg" alt="" />\r\n<img src="media/joomlashine/jsn-epic/backgrounds/forest.jpg" alt="" />\r\n<img src="media/joomlashine/jsn-epic/backgrounds/mac.jpg" alt="" />\r\n<img src="media/joomlashine/jsn-epic/backgrounds/skycrapper.jpg" alt="" />\r\n<img src="media/joomlashine/jsn-epic/backgrounds/cloudsea.jpg" alt="" />\r\n<img src="media/joomlashine/jsn-epic/backgrounds/workingdesk.jpg" alt="" />\r\n<img src="media/joomlashine/jsn-epic/backgrounds/our-work-bg.jpg" alt="" />\r\n<img src="media/joomlashine/jsn-epic/backgrounds/bridge.jpg" alt="" />\r\n<img src="media/joomlashine/jsn-epic/custom-html/responsive-intro/iphone.png" alt="" />\r\n</div>', 1, 'stick-leftbottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(158, 215, 'JSN ImageShow', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_imageshow', 1, 1, '', 0, '*'),
(159, 216, 'JSN UniForm', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_uniform', 1, 1, '', 0, '*'),
(160, 217, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(161, 218, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(162, 219, 'JSN imageshow Quick Icons', '', '', 0, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imageshow_quickicon', 1, 1, '', 1, '*'),
(163, 220, 'JSN PowerAdmin Quick Icons', '', '', 0, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_poweradmin', 1, 1, '', 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `AM_modules_menu`
--

CREATE TABLE IF NOT EXISTS `AM_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_modules_menu`
--

INSERT INTO `AM_modules_menu` (`moduleid`, `menuid`) VALUES
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(19, 0),
(23, 101),
(30, 0),
(49, 120),
(55, 119),
(57, 174),
(57, 175),
(57, 176),
(57, 177),
(57, 178),
(57, 179),
(67, 0),
(77, 183),
(77, 184),
(77, 185),
(77, 186),
(77, 187),
(77, 188),
(77, 189),
(78, 183),
(78, 184),
(78, 185),
(78, 186),
(78, 187),
(78, 188),
(78, 189),
(79, 0),
(80, 0),
(81, 1),
(81, 2),
(81, 3),
(81, 4),
(81, 5),
(81, 6),
(81, 7),
(81, 8),
(81, 9),
(81, 10),
(81, 11),
(81, 12),
(81, 13),
(81, 14),
(81, 15),
(81, 16),
(81, 17),
(81, 18),
(81, 19),
(81, 20),
(81, 21),
(81, 22),
(81, 23),
(81, 172),
(81, 173),
(81, 174),
(81, 175),
(81, 176),
(81, 177),
(81, 178),
(81, 179),
(81, 180),
(81, 181),
(81, 182),
(81, 183),
(81, 184),
(81, 185),
(81, 186),
(81, 187),
(81, 188),
(81, 189),
(81, 190),
(81, 191),
(81, 192),
(81, 193),
(81, 194),
(81, 195),
(81, 196),
(81, 197),
(81, 198),
(81, 199),
(81, 200),
(81, 244),
(81, 245),
(81, 246),
(81, 258),
(81, 332),
(81, 748),
(81, 837),
(81, 945),
(81, 946),
(81, 947),
(81, 948),
(81, 949),
(81, 973),
(81, 974),
(81, 975),
(81, 976),
(81, 977),
(81, 1002),
(81, 1003),
(81, 1004),
(81, 1005),
(81, 1006),
(81, 1007),
(81, 1008),
(81, 1009),
(81, 1010),
(81, 1011),
(85, 0),
(86, 0),
(87, 185),
(87, 188),
(88, 186),
(88, 187),
(89, 184),
(89, 185),
(89, 186),
(91, 101),
(91, 172),
(91, 173),
(91, 174),
(91, 175),
(91, 176),
(91, 177),
(91, 178),
(91, 179),
(91, 180),
(91, 181),
(91, 182),
(91, 183),
(91, 184),
(91, 185),
(91, 186),
(91, 187),
(91, 188),
(91, 189),
(91, 190),
(91, 191),
(91, 192),
(91, 193),
(91, 194),
(91, 195),
(91, 196),
(91, 197),
(91, 198),
(91, 200),
(93, 193),
(95, 184),
(95, 187),
(95, 188),
(96, 184),
(96, 185),
(96, 186),
(96, 187),
(96, 188),
(96, 189),
(97, 184),
(97, 185),
(97, 186),
(97, 187),
(97, 188),
(97, 189),
(98, 184),
(98, 185),
(98, 186),
(98, 187),
(98, 188),
(98, 189),
(99, 0),
(100, 184),
(100, 185),
(100, 186),
(100, 187),
(100, 188),
(100, 189),
(101, 184),
(101, 185),
(101, 186),
(101, 187),
(101, 188),
(101, 189),
(102, 0),
(103, 193),
(104, 193),
(105, 193),
(107, 193),
(109, 101),
(110, 192),
(114, 101),
(114, 172),
(114, 173),
(114, 174),
(114, 175),
(114, 176),
(114, 177),
(114, 183),
(114, 184),
(114, 185),
(114, 186),
(114, 187),
(114, 188),
(114, 189),
(114, 190),
(114, 192),
(114, 193),
(114, 194),
(114, 199),
(114, 200),
(114, 246),
(114, 258),
(114, 332),
(114, 837),
(115, 192),
(116, 183),
(116, 190),
(116, 191),
(116, 246),
(116, 258),
(116, 332),
(116, 837),
(117, 172),
(117, 173),
(117, 174),
(117, 175),
(117, 176),
(117, 177),
(118, 0),
(119, 101),
(120, 191),
(124, 0),
(125, 0),
(126, 0),
(127, 184),
(127, 185),
(127, 186),
(127, 187),
(127, 188),
(127, 189),
(128, 184),
(128, 185),
(128, 186),
(128, 187),
(128, 188),
(128, 189),
(129, 184),
(129, 185),
(129, 186),
(129, 187),
(129, 188),
(129, 189),
(130, 184),
(130, 185),
(130, 186),
(130, 187),
(130, 188),
(130, 189),
(131, 184),
(131, 185),
(131, 186),
(131, 187),
(131, 188),
(131, 189),
(132, 184),
(132, 185),
(132, 186),
(132, 187),
(132, 188),
(132, 189),
(133, 184),
(133, 185),
(133, 186),
(133, 187),
(133, 188),
(133, 189),
(134, 184),
(134, 185),
(134, 186),
(134, 187),
(134, 188),
(134, 189),
(135, 184),
(135, 185),
(135, 186),
(135, 187),
(135, 188),
(135, 189),
(136, 178),
(136, 179),
(136, 180),
(136, 184),
(136, 185),
(136, 186),
(136, 187),
(136, 188),
(136, 189),
(138, -200),
(138, -199),
(138, -198),
(138, -197),
(138, -196),
(138, -195),
(138, -189),
(138, -188),
(138, -187),
(138, -186),
(138, -185),
(138, -184),
(138, -182),
(138, -181),
(138, -180),
(138, -179),
(138, -178),
(138, -177),
(138, -176),
(138, -175),
(138, -174),
(138, -173),
(138, -172),
(139, 0),
(140, 0),
(141, 101),
(141, 172),
(141, 173),
(141, 174),
(141, 175),
(141, 176),
(141, 177),
(141, 183),
(141, 190),
(141, 191),
(141, 192),
(141, 193),
(141, 194),
(141, 246),
(141, 258),
(141, 332),
(141, 837),
(143, 0),
(144, 258),
(147, 184),
(147, 185),
(147, 186),
(147, 187),
(147, 188),
(147, 189),
(148, 184),
(148, 185),
(148, 186),
(148, 187),
(148, 188),
(148, 189),
(149, 184),
(149, 185),
(149, 186),
(149, 187),
(149, 188),
(149, 189),
(150, 0),
(151, 101),
(152, 101),
(153, 101),
(154, 101),
(155, 101),
(156, 101),
(157, 0),
(160, 0),
(161, 0),
(162, 0),
(163, 0);

-- --------------------------------------------------------

--
-- Table structure for table `AM_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `AM_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
`id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_overrider`
--

CREATE TABLE IF NOT EXISTS `AM_overrider` (
`id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `AM_postinstall_messages` (
`postinstall_message_id` bigint(20) unsigned NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_postinstall_messages`
--

INSERT INTO `AM_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(4, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `AM_redirect_links`
--

CREATE TABLE IF NOT EXISTS `AM_redirect_links` (
`id` int(10) unsigned NOT NULL,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_schemas`
--

CREATE TABLE IF NOT EXISTS `AM_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_schemas`
--

INSERT INTO `AM_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.3.6-2014-09-30'),
(704, '4.8.7'),
(711, '1.1.6'),
(712, '1.1.3'),
(713, '1.1.8'),
(714, '1.0.1'),
(715, '1.0.0'),
(716, '1.0.6'),
(717, '2.1.0'),
(728, '1.1.0');

-- --------------------------------------------------------

--
-- Table structure for table `AM_session`
--

CREATE TABLE IF NOT EXISTS `AM_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_session`
--

INSERT INTO `AM_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('9l42gk57a1gs8lps3nt43kskm5', 0, 1, '1414601652', '__default|a:9:{s:15:"session.counter";i:3;s:19:"session.timer.start";i:1414601648;s:18:"session.timer.last";i:1414601652;s:17:"session.timer.now";i:1414601652;s:22:"session.client.browser";s:74:"Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:26.0) Gecko/20100101 Firefox/26.0";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:20:"jsn_mobilize_profile";O:8:"stdClass":9:{s:10:"profile_id";s:1:"1";s:13:"profile_title";s:12:"Demo profile";s:19:"profile_description";s:0:"";s:13:"profile_state";s:1:"1";s:14:"profile_minify";s:0:"";s:23:"profile_optimize_images";s:3:"540";s:8:"ordering";s:1:"0";s:10:"support_id";s:2:"16";s:5:"os_id";s:2:"12";}s:16:"com_mailto.links";a:1:{s:40:"0a5d3f2dbd4f8cd00ecaad57e5d0a418056f9aad";O:8:"stdClass":2:{s:4:"link";s:82:"http://localhost/GDA/index.php/47-template-details/general/15-introducing-jsn-epic";s:6:"expiry";i:1414601652;}}}', 0, ''),
('bchcg9q7qplvkfi6nmk95rqvg3', 0, 1, '1414530084', '__default|a:9:{s:15:"session.counter";i:3;s:19:"session.timer.start";i:1414530082;s:18:"session.timer.last";i:1414530083;s:17:"session.timer.now";i:1414530083;s:22:"session.client.browser";s:74:"Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:26.0) Gecko/20100101 Firefox/26.0";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:20:"jsn_mobilize_profile";O:8:"stdClass":9:{s:10:"profile_id";s:1:"1";s:13:"profile_title";s:12:"Demo profile";s:19:"profile_description";s:0:"";s:13:"profile_state";s:1:"1";s:14:"profile_minify";s:0:"";s:23:"profile_optimize_images";s:3:"540";s:8:"ordering";s:1:"0";s:10:"support_id";s:2:"16";s:5:"os_id";s:2:"12";}s:16:"com_mailto.links";a:1:{s:40:"3205509318113bcda809a733315c773c986d87d2";O:8:"stdClass":2:{s:4:"link";s:85:"http://10.248.0.137/GDA/index.php/47-template-details/general/15-introducing-jsn-epic";s:6:"expiry";i:1414530083;}}}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `AM_tags`
--

CREATE TABLE IF NOT EXISTS `AM_tags` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_tags`
--

INSERT INTO `AM_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `AM_template_styles`
--

CREATE TABLE IF NOT EXISTS `AM_template_styles` (
`id` int(10) unsigned NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_template_styles`
--

INSERT INTO `AM_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'jsn_epic_free', 0, '1', 'JSN Epic FREE - Default', '{"logoColored":"1","mobileLogo":"","logoLink":"index.php","logoSlogan":"","templateWidth":{"type":"fixed","fixed":"1170","float":"90"},"showFrontpage":"0","desktopSwitcher":"1","promoColumns":{"01:promo-left":"span3","00:promo":"span6","02:promo-right":"span3"},"mainColumns":{"01:left":"span3","00:content":"span6","02:right":"span3"},"contentColumns":{"01:innerleft":"span3","00:component":"span6","02:innerright":"span3"},"userColumns":{"00:user5":"span4","00:user6":"span4","00:user7":"span4"},"menuSticky":{"mobile":"1","desktop":"0"},"sitetoolsColors":"{\\"list\\":[\\"blue\\",\\"red\\",\\"green\\",\\"violet\\",\\"orange\\",\\"grey\\"],\\"colors\\":[\\"blue\\",\\"red\\",\\"green\\",\\"violet\\",\\"orange\\",\\"grey\\"]}","socialIcons":{"status":["facebook","twitter","youtube"]}}'),
(10, 'jsn_mobilize', 0, '0', 'JSN Mobilize - Default', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `AM_ucm_base`
--

CREATE TABLE IF NOT EXISTS `AM_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_ucm_content`
--

CREATE TABLE IF NOT EXISTS `AM_ucm_content` (
`core_content_id` int(10) unsigned NOT NULL,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `AM_ucm_history`
--

CREATE TABLE IF NOT EXISTS `AM_ucm_history` (
`version_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_update_sites`
--

CREATE TABLE IF NOT EXISTS `AM_update_sites` (
`update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Update Sites';

--
-- Dumping data for table `AM_update_sites`
--

INSERT INTO `AM_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1414317815, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1414317815, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1414317730, ''),
(5, 'imageshow', 'collection', 'http://localhost/GDA/administrator/index.php?option=com_imageshow&task=checkUpdate&file=update.xml', 1, 1414317730, ''),
(6, 'poweradmin', 'collection', 'http://localhost/GDA/administrator/index.php?option=com_poweradmin&task=checkUpdate&file=update.xml', 1, 1414317730, ''),
(7, 'uniform', 'collection', 'http://localhost/GDA/administrator/index.php?option=com_uniform&task=checkUpdate&file=update.xml', 1, 1414317730, ''),
(8, 'mobilize', 'collection', 'http://localhost/GDA/administrator/index.php?option=com_mobilize&task=checkUpdate&file=update.xml', 1, 1414317730, '');

-- --------------------------------------------------------

--
-- Table structure for table `AM_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `AM_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `AM_update_sites_extensions`
--

INSERT INTO `AM_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 28),
(5, 704),
(6, 717),
(7, 724),
(8, 728);

-- --------------------------------------------------------

--
-- Table structure for table `AM_updates`
--

CREATE TABLE IF NOT EXISTS `AM_updates` (
`update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates';

-- --------------------------------------------------------

--
-- Table structure for table `AM_user_keys`
--

CREATE TABLE IF NOT EXISTS `AM_user_keys` (
`id` int(10) unsigned NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_user_notes`
--

CREATE TABLE IF NOT EXISTS `AM_user_notes` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AM_user_profiles`
--

CREATE TABLE IF NOT EXISTS `AM_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `AM_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `AM_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_user_usergroup_map`
--

INSERT INTO `AM_user_usergroup_map` (`user_id`, `group_id`) VALUES
(638, 8);

-- --------------------------------------------------------

--
-- Table structure for table `AM_usergroups`
--

CREATE TABLE IF NOT EXISTS `AM_usergroups` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_usergroups`
--

INSERT INTO `AM_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `AM_users`
--

CREATE TABLE IF NOT EXISTS `AM_users` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB AUTO_INCREMENT=639 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_users`
--

INSERT INTO `AM_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(638, 'Super User', 'gda', 'ylulie4@gmail.com', '$2y$10$TI/RTQCTcyFa7kHBxNHHSOSbVYeBSQEpifKCaRkrWC8L/CaodN7sK', 0, 1, '2014-10-14 06:49:00', '2014-10-26 08:54:43', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `AM_viewlevels`
--

CREATE TABLE IF NOT EXISTS `AM_viewlevels` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AM_viewlevels`
--

INSERT INTO `AM_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]'),
(6, 'Super Users', 0, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `AM_weblinks`
--

CREATE TABLE IF NOT EXISTS `AM_weblinks` (
`id` int(10) unsigned NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AM_assets`
--
ALTER TABLE `AM_assets`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_asset_name` (`name`), ADD KEY `idx_lft_rgt` (`lft`,`rgt`), ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `AM_associations`
--
ALTER TABLE `AM_associations`
 ADD PRIMARY KEY (`context`,`id`), ADD KEY `idx_key` (`key`);

--
-- Indexes for table `AM_banner_clients`
--
ALTER TABLE `AM_banner_clients`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`);

--
-- Indexes for table `AM_banner_tracks`
--
ALTER TABLE `AM_banner_tracks`
 ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`), ADD KEY `idx_track_date` (`track_date`), ADD KEY `idx_track_type` (`track_type`), ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `AM_banners`
--
ALTER TABLE `AM_banners`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_state` (`state`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`), ADD KEY `idx_banner_catid` (`catid`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `AM_categories`
--
ALTER TABLE `AM_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `cat_idx` (`extension`,`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `AM_contact_details`
--
ALTER TABLE `AM_contact_details`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `AM_content`
--
ALTER TABLE `AM_content`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `AM_content_frontpage`
--
ALTER TABLE `AM_content_frontpage`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `AM_content_rating`
--
ALTER TABLE `AM_content_rating`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `AM_content_types`
--
ALTER TABLE `AM_content_types`
 ADD PRIMARY KEY (`type_id`), ADD KEY `idx_alias` (`type_alias`);

--
-- Indexes for table `AM_contentitem_tag_map`
--
ALTER TABLE `AM_contentitem_tag_map`
 ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`), ADD KEY `idx_tag_type` (`tag_id`,`type_id`), ADD KEY `idx_date_id` (`tag_date`,`tag_id`), ADD KEY `idx_tag` (`tag_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `AM_extensions`
--
ALTER TABLE `AM_extensions`
 ADD PRIMARY KEY (`extension_id`), ADD KEY `element_clientid` (`element`,`client_id`), ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`), ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `AM_finder_filters`
--
ALTER TABLE `AM_finder_filters`
 ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `AM_finder_links`
--
ALTER TABLE `AM_finder_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_title` (`title`), ADD KEY `idx_md5` (`md5sum`), ADD KEY `idx_url` (`url`(75)), ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`), ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `AM_finder_links_terms0`
--
ALTER TABLE `AM_finder_links_terms0`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `AM_finder_links_terms1`
--
ALTER TABLE `AM_finder_links_terms1`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `AM_finder_links_terms2`
--
ALTER TABLE `AM_finder_links_terms2`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `AM_finder_links_terms3`
--
ALTER TABLE `AM_finder_links_terms3`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `AM_finder_links_terms4`
--
ALTER TABLE `AM_finder_links_terms4`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `AM_finder_links_terms5`
--
ALTER TABLE `AM_finder_links_terms5`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `AM_finder_links_terms6`
--
ALTER TABLE `AM_finder_links_terms6`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `AM_finder_links_terms7`
--
ALTER TABLE `AM_finder_links_terms7`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `AM_finder_links_terms8`
--
ALTER TABLE `AM_finder_links_terms8`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `AM_finder_links_terms9`
--
ALTER TABLE `AM_finder_links_terms9`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `AM_finder_links_termsa`
--
ALTER TABLE `AM_finder_links_termsa`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `AM_finder_links_termsb`
--
ALTER TABLE `AM_finder_links_termsb`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `AM_finder_links_termsc`
--
ALTER TABLE `AM_finder_links_termsc`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `AM_finder_links_termsd`
--
ALTER TABLE `AM_finder_links_termsd`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `AM_finder_links_termse`
--
ALTER TABLE `AM_finder_links_termse`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `AM_finder_links_termsf`
--
ALTER TABLE `AM_finder_links_termsf`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `AM_finder_taxonomy`
--
ALTER TABLE `AM_finder_taxonomy`
 ADD PRIMARY KEY (`id`), ADD KEY `parent_id` (`parent_id`), ADD KEY `state` (`state`), ADD KEY `ordering` (`ordering`), ADD KEY `access` (`access`), ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `AM_finder_taxonomy_map`
--
ALTER TABLE `AM_finder_taxonomy_map`
 ADD PRIMARY KEY (`link_id`,`node_id`), ADD KEY `link_id` (`link_id`), ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `AM_finder_terms`
--
ALTER TABLE `AM_finder_terms`
 ADD PRIMARY KEY (`term_id`), ADD UNIQUE KEY `idx_term` (`term`), ADD KEY `idx_term_phrase` (`term`,`phrase`), ADD KEY `idx_stem_phrase` (`stem`,`phrase`), ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `AM_finder_terms_common`
--
ALTER TABLE `AM_finder_terms_common`
 ADD KEY `idx_word_lang` (`term`,`language`), ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `AM_finder_tokens`
--
ALTER TABLE `AM_finder_tokens`
 ADD KEY `idx_word` (`term`), ADD KEY `idx_context` (`context`);

--
-- Indexes for table `AM_finder_tokens_aggregate`
--
ALTER TABLE `AM_finder_tokens_aggregate`
 ADD KEY `token` (`term`), ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `AM_finder_types`
--
ALTER TABLE `AM_finder_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `AM_imageshow_external_source_picasa`
--
ALTER TABLE `AM_imageshow_external_source_picasa`
 ADD PRIMARY KEY (`external_source_id`);

--
-- Indexes for table `AM_imageshow_images`
--
ALTER TABLE `AM_imageshow_images`
 ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `AM_imageshow_log`
--
ALTER TABLE `AM_imageshow_log`
 ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `AM_imageshow_showcase`
--
ALTER TABLE `AM_imageshow_showcase`
 ADD PRIMARY KEY (`showcase_id`);

--
-- Indexes for table `AM_imageshow_showlist`
--
ALTER TABLE `AM_imageshow_showlist`
 ADD PRIMARY KEY (`showlist_id`);

--
-- Indexes for table `AM_imageshow_source_profile`
--
ALTER TABLE `AM_imageshow_source_profile`
 ADD PRIMARY KEY (`external_source_profile_id`);

--
-- Indexes for table `AM_imageshow_theme_carousel`
--
ALTER TABLE `AM_imageshow_theme_carousel`
 ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `AM_imageshow_theme_classic_flash`
--
ALTER TABLE `AM_imageshow_theme_classic_flash`
 ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `AM_imageshow_theme_classic_javascript`
--
ALTER TABLE `AM_imageshow_theme_classic_javascript`
 ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `AM_imageshow_theme_classic_parameters`
--
ALTER TABLE `AM_imageshow_theme_classic_parameters`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `AM_imageshow_theme_flow`
--
ALTER TABLE `AM_imageshow_theme_flow`
 ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `AM_imageshow_theme_grid`
--
ALTER TABLE `AM_imageshow_theme_grid`
 ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `AM_imageshow_theme_slider`
--
ALTER TABLE `AM_imageshow_theme_slider`
 ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `AM_imageshow_theme_strip`
--
ALTER TABLE `AM_imageshow_theme_strip`
 ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `AM_jsn_imageshow_config`
--
ALTER TABLE `AM_jsn_imageshow_config`
 ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `AM_jsn_imageshow_messages`
--
ALTER TABLE `AM_jsn_imageshow_messages`
 ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `AM_jsn_mobilize_config`
--
ALTER TABLE `AM_jsn_mobilize_config`
 ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `AM_jsn_mobilize_design`
--
ALTER TABLE `AM_jsn_mobilize_design`
 ADD PRIMARY KEY (`design_id`);

--
-- Indexes for table `AM_jsn_mobilize_messages`
--
ALTER TABLE `AM_jsn_mobilize_messages`
 ADD PRIMARY KEY (`msg_id`), ADD UNIQUE KEY `message` (`msg_screen`,`ordering`);

--
-- Indexes for table `AM_jsn_mobilize_os`
--
ALTER TABLE `AM_jsn_mobilize_os`
 ADD PRIMARY KEY (`os_id`);

--
-- Indexes for table `AM_jsn_mobilize_os_support`
--
ALTER TABLE `AM_jsn_mobilize_os_support`
 ADD PRIMARY KEY (`support_id`);

--
-- Indexes for table `AM_jsn_mobilize_profiles`
--
ALTER TABLE `AM_jsn_mobilize_profiles`
 ADD PRIMARY KEY (`profile_id`);

--
-- Indexes for table `AM_jsn_poweradmin_config`
--
ALTER TABLE `AM_jsn_poweradmin_config`
 ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `AM_jsn_poweradmin_favourite`
--
ALTER TABLE `AM_jsn_poweradmin_favourite`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `AM_jsn_poweradmin_history`
--
ALTER TABLE `AM_jsn_poweradmin_history`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `AM_jsn_uniform_config`
--
ALTER TABLE `AM_jsn_uniform_config`
 ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `AM_jsn_uniform_data`
--
ALTER TABLE `AM_jsn_uniform_data`
 ADD PRIMARY KEY (`data_id`), ADD KEY `fk_uniform_data_forms` (`form_id`);

--
-- Indexes for table `AM_jsn_uniform_emails`
--
ALTER TABLE `AM_jsn_uniform_emails`
 ADD PRIMARY KEY (`email_id`), ADD KEY `fk_uniform_emails_forms` (`form_id`);

--
-- Indexes for table `AM_jsn_uniform_fields`
--
ALTER TABLE `AM_jsn_uniform_fields`
 ADD PRIMARY KEY (`field_id`), ADD KEY `fk_uniform_fields_forms` (`form_id`);

--
-- Indexes for table `AM_jsn_uniform_form_pages`
--
ALTER TABLE `AM_jsn_uniform_form_pages`
 ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `AM_jsn_uniform_forms`
--
ALTER TABLE `AM_jsn_uniform_forms`
 ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `AM_jsn_uniform_messages`
--
ALTER TABLE `AM_jsn_uniform_messages`
 ADD PRIMARY KEY (`msg_id`), ADD UNIQUE KEY `message` (`msg_screen`,`ordering`);

--
-- Indexes for table `AM_jsn_uniform_submission_data`
--
ALTER TABLE `AM_jsn_uniform_submission_data`
 ADD PRIMARY KEY (`submission_data_id`), ADD KEY `submission_data_id` (`submission_data_id`), ADD KEY `submission_id` (`submission_id`), ADD KEY `form_id` (`form_id`), ADD KEY `field_id` (`field_id`);

--
-- Indexes for table `AM_jsn_uniform_submissions`
--
ALTER TABLE `AM_jsn_uniform_submissions`
 ADD PRIMARY KEY (`submission_id`);

--
-- Indexes for table `AM_jsn_uniform_templates`
--
ALTER TABLE `AM_jsn_uniform_templates`
 ADD PRIMARY KEY (`template_id`), ADD KEY `fk_uniform_templates_forms` (`form_id`);

--
-- Indexes for table `AM_languages`
--
ALTER TABLE `AM_languages`
 ADD PRIMARY KEY (`lang_id`), ADD UNIQUE KEY `idx_sef` (`sef`), ADD UNIQUE KEY `idx_image` (`image`), ADD UNIQUE KEY `idx_langcode` (`lang_code`), ADD KEY `idx_ordering` (`ordering`), ADD KEY `idx_access` (`access`);

--
-- Indexes for table `AM_menu`
--
ALTER TABLE `AM_menu`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`), ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`), ADD KEY `idx_menutype` (`menutype`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_path` (`path`(255)), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `AM_menu_types`
--
ALTER TABLE `AM_menu_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `AM_messages`
--
ALTER TABLE `AM_messages`
 ADD PRIMARY KEY (`message_id`), ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `AM_messages_cfg`
--
ALTER TABLE `AM_messages_cfg`
 ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `AM_modules`
--
ALTER TABLE `AM_modules`
 ADD PRIMARY KEY (`id`), ADD KEY `published` (`published`,`access`), ADD KEY `newsfeeds` (`module`,`published`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `AM_modules_menu`
--
ALTER TABLE `AM_modules_menu`
 ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `AM_newsfeeds`
--
ALTER TABLE `AM_newsfeeds`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `AM_overrider`
--
ALTER TABLE `AM_overrider`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `AM_postinstall_messages`
--
ALTER TABLE `AM_postinstall_messages`
 ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `AM_redirect_links`
--
ALTER TABLE `AM_redirect_links`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_link_old` (`old_url`), ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `AM_schemas`
--
ALTER TABLE `AM_schemas`
 ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `AM_session`
--
ALTER TABLE `AM_session`
 ADD PRIMARY KEY (`session_id`), ADD KEY `userid` (`userid`), ADD KEY `time` (`time`);

--
-- Indexes for table `AM_tags`
--
ALTER TABLE `AM_tags`
 ADD PRIMARY KEY (`id`), ADD KEY `tag_idx` (`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `AM_template_styles`
--
ALTER TABLE `AM_template_styles`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_template` (`template`), ADD KEY `idx_home` (`home`);

--
-- Indexes for table `AM_ucm_base`
--
ALTER TABLE `AM_ucm_base`
 ADD PRIMARY KEY (`ucm_id`), ADD KEY `idx_ucm_item_id` (`ucm_item_id`), ADD KEY `idx_ucm_type_id` (`ucm_type_id`), ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `AM_ucm_content`
--
ALTER TABLE `AM_ucm_content`
 ADD PRIMARY KEY (`core_content_id`), ADD KEY `tag_idx` (`core_state`,`core_access`), ADD KEY `idx_access` (`core_access`), ADD KEY `idx_alias` (`core_alias`), ADD KEY `idx_language` (`core_language`), ADD KEY `idx_title` (`core_title`), ADD KEY `idx_modified_time` (`core_modified_time`), ADD KEY `idx_created_time` (`core_created_time`), ADD KEY `idx_content_type` (`core_type_alias`), ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`), ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`), ADD KEY `idx_core_created_user_id` (`core_created_user_id`), ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `AM_ucm_history`
--
ALTER TABLE `AM_ucm_history`
 ADD PRIMARY KEY (`version_id`), ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`), ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `AM_update_sites`
--
ALTER TABLE `AM_update_sites`
 ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `AM_update_sites_extensions`
--
ALTER TABLE `AM_update_sites_extensions`
 ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `AM_updates`
--
ALTER TABLE `AM_updates`
 ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `AM_user_keys`
--
ALTER TABLE `AM_user_keys`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `series` (`series`), ADD UNIQUE KEY `series_2` (`series`), ADD UNIQUE KEY `series_3` (`series`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `AM_user_notes`
--
ALTER TABLE `AM_user_notes`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_user_id` (`user_id`), ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `AM_user_profiles`
--
ALTER TABLE `AM_user_profiles`
 ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `AM_user_usergroup_map`
--
ALTER TABLE `AM_user_usergroup_map`
 ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `AM_usergroups`
--
ALTER TABLE `AM_usergroups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`), ADD KEY `idx_usergroup_title_lookup` (`title`), ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`), ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `AM_users`
--
ALTER TABLE `AM_users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_name` (`name`), ADD KEY `idx_block` (`block`), ADD KEY `username` (`username`), ADD KEY `email` (`email`);

--
-- Indexes for table `AM_viewlevels`
--
ALTER TABLE `AM_viewlevels`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `AM_weblinks`
--
ALTER TABLE `AM_weblinks`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AM_assets`
--
ALTER TABLE `AM_assets`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=221;
--
-- AUTO_INCREMENT for table `AM_banner_clients`
--
ALTER TABLE `AM_banner_clients`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `AM_banners`
--
ALTER TABLE `AM_banners`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `AM_categories`
--
ALTER TABLE `AM_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `AM_contact_details`
--
ALTER TABLE `AM_contact_details`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `AM_content`
--
ALTER TABLE `AM_content`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `AM_content_types`
--
ALTER TABLE `AM_content_types`
MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `AM_extensions`
--
ALTER TABLE `AM_extensions`
MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=731;
--
-- AUTO_INCREMENT for table `AM_finder_filters`
--
ALTER TABLE `AM_finder_filters`
MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AM_finder_links`
--
ALTER TABLE `AM_finder_links`
MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AM_finder_taxonomy`
--
ALTER TABLE `AM_finder_taxonomy`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `AM_finder_terms`
--
ALTER TABLE `AM_finder_terms`
MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AM_finder_types`
--
ALTER TABLE `AM_finder_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AM_imageshow_external_source_picasa`
--
ALTER TABLE `AM_imageshow_external_source_picasa`
MODIFY `external_source_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `AM_imageshow_images`
--
ALTER TABLE `AM_imageshow_images`
MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `AM_imageshow_log`
--
ALTER TABLE `AM_imageshow_log`
MODIFY `log_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AM_imageshow_showcase`
--
ALTER TABLE `AM_imageshow_showcase`
MODIFY `showcase_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `AM_imageshow_showlist`
--
ALTER TABLE `AM_imageshow_showlist`
MODIFY `showlist_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `AM_imageshow_source_profile`
--
ALTER TABLE `AM_imageshow_source_profile`
MODIFY `external_source_profile_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `AM_imageshow_theme_carousel`
--
ALTER TABLE `AM_imageshow_theme_carousel`
MODIFY `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `AM_imageshow_theme_classic_flash`
--
ALTER TABLE `AM_imageshow_theme_classic_flash`
MODIFY `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AM_imageshow_theme_classic_javascript`
--
ALTER TABLE `AM_imageshow_theme_classic_javascript`
MODIFY `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `AM_imageshow_theme_classic_parameters`
--
ALTER TABLE `AM_imageshow_theme_classic_parameters`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AM_imageshow_theme_flow`
--
ALTER TABLE `AM_imageshow_theme_flow`
MODIFY `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `AM_imageshow_theme_grid`
--
ALTER TABLE `AM_imageshow_theme_grid`
MODIFY `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `AM_imageshow_theme_slider`
--
ALTER TABLE `AM_imageshow_theme_slider`
MODIFY `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `AM_imageshow_theme_strip`
--
ALTER TABLE `AM_imageshow_theme_strip`
MODIFY `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `AM_jsn_imageshow_messages`
--
ALTER TABLE `AM_jsn_imageshow_messages`
MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `AM_jsn_mobilize_design`
--
ALTER TABLE `AM_jsn_mobilize_design`
MODIFY `design_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `AM_jsn_mobilize_messages`
--
ALTER TABLE `AM_jsn_mobilize_messages`
MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AM_jsn_mobilize_os`
--
ALTER TABLE `AM_jsn_mobilize_os`
MODIFY `os_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `AM_jsn_mobilize_os_support`
--
ALTER TABLE `AM_jsn_mobilize_os_support`
MODIFY `support_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `AM_jsn_mobilize_profiles`
--
ALTER TABLE `AM_jsn_mobilize_profiles`
MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `AM_jsn_poweradmin_favourite`
--
ALTER TABLE `AM_jsn_poweradmin_favourite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AM_jsn_poweradmin_history`
--
ALTER TABLE `AM_jsn_poweradmin_history`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `AM_jsn_uniform_data`
--
ALTER TABLE `AM_jsn_uniform_data`
MODIFY `data_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `AM_jsn_uniform_emails`
--
ALTER TABLE `AM_jsn_uniform_emails`
MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `AM_jsn_uniform_fields`
--
ALTER TABLE `AM_jsn_uniform_fields`
MODIFY `field_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `AM_jsn_uniform_form_pages`
--
ALTER TABLE `AM_jsn_uniform_form_pages`
MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `AM_jsn_uniform_forms`
--
ALTER TABLE `AM_jsn_uniform_forms`
MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `AM_jsn_uniform_messages`
--
ALTER TABLE `AM_jsn_uniform_messages`
MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AM_jsn_uniform_submission_data`
--
ALTER TABLE `AM_jsn_uniform_submission_data`
MODIFY `submission_data_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AM_jsn_uniform_submissions`
--
ALTER TABLE `AM_jsn_uniform_submissions`
MODIFY `submission_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AM_jsn_uniform_templates`
--
ALTER TABLE `AM_jsn_uniform_templates`
MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `AM_languages`
--
ALTER TABLE `AM_languages`
MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `AM_menu`
--
ALTER TABLE `AM_menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1089;
--
-- AUTO_INCREMENT for table `AM_menu_types`
--
ALTER TABLE `AM_menu_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `AM_messages`
--
ALTER TABLE `AM_messages`
MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AM_modules`
--
ALTER TABLE `AM_modules`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT for table `AM_newsfeeds`
--
ALTER TABLE `AM_newsfeeds`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AM_overrider`
--
ALTER TABLE `AM_overrider`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `AM_postinstall_messages`
--
ALTER TABLE `AM_postinstall_messages`
MODIFY `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `AM_redirect_links`
--
ALTER TABLE `AM_redirect_links`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AM_tags`
--
ALTER TABLE `AM_tags`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `AM_template_styles`
--
ALTER TABLE `AM_template_styles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `AM_ucm_content`
--
ALTER TABLE `AM_ucm_content`
MODIFY `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AM_ucm_history`
--
ALTER TABLE `AM_ucm_history`
MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AM_update_sites`
--
ALTER TABLE `AM_update_sites`
MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `AM_updates`
--
ALTER TABLE `AM_updates`
MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AM_user_keys`
--
ALTER TABLE `AM_user_keys`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AM_user_notes`
--
ALTER TABLE `AM_user_notes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AM_usergroups`
--
ALTER TABLE `AM_usergroups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `AM_users`
--
ALTER TABLE `AM_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=639;
--
-- AUTO_INCREMENT for table `AM_viewlevels`
--
ALTER TABLE `AM_viewlevels`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `AM_weblinks`
--
ALTER TABLE `AM_weblinks`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
