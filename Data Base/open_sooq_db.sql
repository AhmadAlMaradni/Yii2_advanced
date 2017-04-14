-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2017 at 09:01 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `open_sooq_db`
--
CREATE DATABASE IF NOT EXISTS `open_sooq_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `open_sooq_db`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Cars'),
(2, 'Mobiles'),
(3, 'Tablets');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1491835415),
('m130524_201442_init', 1491835445);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `description`, `user_id`, `category_id`) VALUES
(58, 'helllllo', 'newwwwwwwwwwwwwwwwwww', 3, 2),
(59, 'hi', 'hehhehehehe', 3, 2),
(60, 'hi', 'ho2223232', 3, 2),
(61, 'ooo', 'oooo', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `posttags`
--

CREATE TABLE IF NOT EXISTS `posttags` (
  `PostsID` int(11) NOT NULL,
  `TagsID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posttags`
--

INSERT INTO `posttags` (`PostsID`, `TagsID`) VALUES
(52, 10),
(57, 1),
(57, 3),
(57, 5),
(57, 11),
(57, 13),
(58, 1),
(58, 2),
(59, 1),
(60, 4),
(61, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`ID`, `Name`) VALUES
(1, 'toyota'),
(2, 'honda'),
(3, 'gmc'),
(4, 'automatic'),
(5, 'manual'),
(6, 'hybrid'),
(7, 'gas'),
(8, 'iphone'),
(9, 'galaxy s'),
(10, 'galaxy note'),
(11, 'black'),
(12, 'white'),
(13, 'ipad'),
(14, 'galaxy tab');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$13$5o8JWVJSq0O8TnYneGlr5.BhKcO5gBDzUaS9.m6HACx95mIZzDP1e', 'FjYjJFVVYaGhGMmMwVFCYBkSBU6hpGu4', '', 10, 0, 0),
(2, 'ahmad', 'LxO5-bjb0FK0X0A1JEecRzKGqqz2W2ZF', '$2y$13$nwuLbKSiyLOkeB0W66PC0.BQKwqran4fBRI.9STs6pN3f7lzEqomi', NULL, 'ahmad@a.com', 10, 1492075942, 1492075942),
(3, 'mad', '1jlKBIz5m8X6-CsaCQGONQq_7iP4TdAZ', '$2y$13$8jp6rj2iG9YCyFpkp.Ov/.6sK3bjU987Ug7x3CBE2og8GCoelPTSm', NULL, '123456@ef.com', 10, 1492090964, 1492090964),
(4, 'ahma', 'ZINu-LD23H5ll1kmACUl_53LT-B-rMtD', '$2y$13$JPbNnMKzWCb9a7WAznjlAu6BGx5dhlDO6ExlByJx5eBWxui6xHY6m', NULL, 'ahmaad@a.com', 10, 1492180598, 1492180598);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
