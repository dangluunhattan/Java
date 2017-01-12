-- phpMyAdmin SQL Dump
-- version 4.4.15.8
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 12, 2017 at 02:15 PM
-- Server version: 5.6.31
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TTShop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_group_id` int(64) NOT NULL,
  `permissions` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `name`, `admin_group_id`, `permissions`) VALUES
(1, 'dangluunhattan@gmail.com', '9a9812268c5b985d76615f7b95366b22', 'Đặng Lưu Nhật Tân', 0, ''),
(9, 'nhattan', '96e79218965eb72c92a549dd5a330112', 'Nhật Tân', 0, '{"admin":["index"],"catalog":["index"],"contact":["index"],"news":["index"],"order":["index"],"product":["index"],"slide":["index"],"support":["index"],"transaction":["index"],"user":["index"]}');

-- --------------------------------------------------------

--
-- Table structure for table `admin_group`
--

CREATE TABLE IF NOT EXISTS `admin_group` (
  `id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_bin NOT NULL,
  `sort_order` tinyint(4) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin_group`
--

INSERT INTO `admin_group` (`id`, `name`, `sort_order`, `permissions`) VALUES
(1, 'Admin', 1, 'a:14:{s:4:"tran";a:2:{i:0;s:4:"list";i:1;s:6:"change";}s:13:"product_order";a:2:{i:0;s:4:"list";i:1;s:6:"change";}s:3:"cat";a:2:{i:0;s:4:"list";i:1;s:6:"change";}s:7:"product";a:2:{i:0;s:4:"list";i:1;s:6:"change";}s:11:"admin_group";a:2:{i:0;s:4:"list";i:1;s:6:"change";}s:5:"admin";a:2:{i:0;s:4:"list";i:1;s:6:"change";}s:4:"user";a:2:{i:0;s:4:"list";i:1;s:6:"change";}s:4:"news";a:2:{i:0;s:4:"list";i:1;s:6:"change";}s:4:"info";a:2:{i:0;s:4:"list";i:1;s:6:"change";}s:7:"support";a:2:{i:0;s:4:"list";i:1;s:6:"change";}s:7:"contact";a:2:{i:0;s:4:"list";i:1;s:6:"change";}s:7:"comment";a:2:{i:0;s:4:"list";i:1;s:6:"change";}s:5:"slide";a:2:{i:0;s:4:"list";i:1;s:6:"change";}s:5:"video";a:2:{i:0;s:4:"list";i:1;s:6:"change";}}'),
(2, 'Mod', 2, 'a:9:{s:3:"cat";a:2:{i:0;s:4:"list";i:1;s:6:"change";}s:7:"product";a:2:{i:0;s:4:"list";i:1;s:6:"change";}s:4:"news";a:2:{i:0;s:4:"list";i:1;s:6:"change";}s:4:"info";a:2:{i:0;s:4:"list";i:1;s:6:"change";}s:7:"support";a:2:{i:0;s:4:"list";i:1;s:6:"change";}s:7:"contact";a:2:{i:0;s:4:"list";i:1;s:6:"change";}s:7:"comment";a:2:{i:0;s:4:"list";i:1;s:6:"change";}s:5:"slide";a:2:{i:0;s:4:"list";i:1;s:6:"change";}s:5:"video";a:2:{i:0;s:4:"list";i:1;s:6:"change";}}');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE IF NOT EXISTS `bill` (
  `bill_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `total` double NOT NULL,
  `payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE IF NOT EXISTS `bill_detail` (
  `bill_detail_id` bigint(20) NOT NULL,
  `bill_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `price` double NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE IF NOT EXISTS `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `site_title` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `site_title`, `meta_desc`, `meta_key`, `parent_id`, `sort_order`) VALUES
(2, 'Máy ảnh', 'Máy ảnh', '', '', 0, 2),
(1, 'Tivi', 'Tivi', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `parent_id` int(255) NOT NULL,
  `user_name` text COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL,
  `count_like` int(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `product_id`, `parent_id`, `user_name`, `user_email`, `user_id`, `user_ip`, `content`, `created`, `count_like`, `status`) VALUES
(1, 7, 0, 'Hoang van tuyen', 'hoangvantuyencnt@gmail.com', 0, '', 'San pham noi con khong admin?                    ', 1408798677, 10, 1),
(2, 7, 1, 'Vu van Anh', 'anh@gmail.com', 0, '', 'San pham nay van con hang', 1408799662, 3, 1),
(3, 7, 0, 'abc', 'hoang@gmail.com', 0, '', 'Test comment             ', 1408800324, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(128) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content_static`
--

CREATE TABLE IF NOT EXISTS `content_static` (
  `id` int(11) NOT NULL,
  `key` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `content_static`
--

INSERT INTO `content_static` (`id`, `key`, `content`) VALUES
(3, 'footer', '<p class="bold">\r\n &copy;2013 -2014 Bản quyền thuộc về&nbsp; <strong>C&ocirc;ng ty TNHH Tuấn Thoa media &ndash; Đại l&yacute; VTC Digital</strong></p>\r\n<p>\r\n Lĩnh vực hoạt động của c&ocirc;ng ty: Điện &amp; điện tử , b&aacute;n lẻ &amp; b&aacute;n bu&ocirc;n</p>\r\n<p>\r\n <strong>Cơ sở 1:</strong>: Cẩm La, X&atilde; Thanh Sơn, Huyện Kiến Thụy, Th&agrave;nh Phố Hải Ph&ograve;ng - DT: 0313881505</p>\r\n<p>\r\n <strong>Cơ sở 2:</strong>: Cẩm Xu&acirc;n, N&uacute;i Đối, Huyện Kiến Thụy, Th&agrave;nh Phố Hải Ph&ograve;ng - DT: 0313812682</p>\r\n'),
(18, 'shipping', '<p>\r\n Chi ph&iacute; vận chuyển của Tuấn Thoa Media</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `title`, `content`, `meta_desc`, `meta_key`, `created`) VALUES
(1, 'Giới thiệu', '<p>\r\n	Giới thiệu</p>\r\n', '', '', 1409044792),
(2, 'Hướng dẫn mua hàng', '<p>\r\n	Hướng dẫn mua h&agrave;ng</p>\r\n', '', '', 1409044950);

-- --------------------------------------------------------

--
-- Table structure for table `maker`
--

CREATE TABLE IF NOT EXISTS `maker` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `info` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `site_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL,
  `parent_id` int(255) NOT NULL,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(50) COLLATE utf8_bin NOT NULL,
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `feature` enum('0','1') COLLATE utf8_bin NOT NULL,
  `count_view` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(255) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `maker_id` int(255) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `image_link` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `site_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `warranty` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(255) NOT NULL,
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL,
  `rate_count` int(255) NOT NULL,
  `gifts` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `feature` enum('0','1') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `maker_id`, `price`, `content`, `description`, `discount`, `image_link`, `image_list`, `created`, `updated`, `view`, `meta_key`, `site_title`, `warranty`, `total`, `buyed`, `rate_total`, `rate_count`, `gifts`, `video`, `meta_desc`, `feature`) VALUES
(2, 1, 'Tivi LG 4000', 0, '4000000.0000', '<p font-size:="" helvetica="" style="margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: " text-align:="">\r\n	Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular..</p>\r\n<div>\r\n	&nbsp;</div>\r\n', '<p font-size:="" helvetica="" style="margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: " text-align:="">\n	Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular..</p>\n<div>\n	&nbsp;</div>\n', 200000, 'product2.jpg', '["feature-pic41.jpg","slide-2-image1.jpg","slide-3-image1.jpg"]', 0, 1477799896, 22, '', '', '12 tháng', 0, 0, 9, 2, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0'),
(17, 2, 'MÁY ẢNH CANON EOS 5D MARK IV (BODY) - HÀNG NHẬP KHẨU', 0, '70000000.0000', '<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px;">\r\n	<span style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); text-align: justify; font-size: 14px; font-family: arial;"><strong style="box-sizing: border-box; outline: none;"><em style="box-sizing: border-box; outline: none;">Thiết kế</em></strong></span></div>\r\n<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px;">\r\n	&nbsp;</div>\r\n<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px;">\r\n	<span style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); text-align: justify; font-size: 14px; font-family: arial;">M&aacute;y ảnh&nbsp;n&agrave;y c&oacute; trọng lượng bao gồm cả pin l&agrave; 890g. Th&acirc;n m&aacute;y được l&agrave;m bằng hợp kim ma gi&ecirc; cao cấp, sử dụng c&aacute;c lớp keo cao su d&aacute;n k&iacute;n tại những khớp nối khung m&aacute;y đảm bảo kh&aacute;ng nước v&agrave; chiu thời tiết. Về bề ngo&agrave;i hầu như kh&ocirc;ng c&oacute; g&igrave; thay đổi so với người đ&agrave;n anh 5 D Mark III.</span><strong style="color: rgb(68, 68, 68); font-family: arial; font-size: 14px; text-align: justify; box-sizing: border-box; outline: none;"><em style="box-sizing: border-box; outline: none;">Cảm biến CMOS 30,4Mpx</em></strong></div>\r\n<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px;">\r\n	&nbsp;</div>\r\n<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px;">\r\n	<span style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); text-align: justify; font-family: arial;"><span style="box-sizing: border-box; outline: none; font-size: 14px;"><span style="box-sizing: border-box; outline: none;"><strong style="box-sizing: border-box; outline: none;">M&aacute;y ảnh Canon&nbsp;EOS 5D Mark IV</strong></span>&nbsp;sử dụng cảm biến h&igrave;nh ảnh CMOS 30,4Mpx (cho ảnh ở độ ph&acirc;n giải 6.720x4.480) với bộ xử l&yacute; h&igrave;nh ảnh Digic 6+ cho ph&eacute;p xử l&yacute; h&igrave;nh ảnh hiệu quả hơn, n&acirc;ng cao chất lượng h&igrave;nh ảnh v&agrave; tốc độ chụp ảnh cải thiện đ&aacute;ng kể đạt mức 7 h&igrave;nh/gi&acirc;y. Một điểm nhấn độc đ&aacute;o của 5D Mark IV đ&oacute; l&agrave; t&iacute;nh năng Lens Optical Corection - t&iacute;nh năng gi&uacute;p xử l&yacute; lệch quang sai, hay bị m&eacute;o, viền t&iacute;m ngay tr&ecirc;n c&aacute;c bức ảnh (chỉ hỗ trợ JPEG).&nbsp;</span></span></div>\r\n<p>\r\n	&nbsp;</p>\r\n<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px; color: rgb(68, 68, 68); font-family: Arial; text-align: center;">\r\n	<span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;"><img alt="Máy Ảnh Canon EOS 5D Mark IV (Body)" src="http://binhminhdigital.com/StoreData/Product/6472/may-anh-Canon-5D-Mark-IV%20(3).jpg" style="box-sizing: border-box; outline: none; max-width: 100%; max-height: 100%; line-height: 20px;" /></span></div>\r\n<p>\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<span style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); text-align: justify; font-size: 14px; font-family: arial;"><strong style="box-sizing: border-box; outline: none;"><em style="box-sizing: border-box; outline: none;">Hệ thống bắt n&eacute;t ti&ecirc;n tiến nhất</em></strong></span><br style="box-sizing: border-box; outline: none;" />\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<span style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); text-align: justify; font-size: 14px; font-family: arial;">M&aacute;y ảnh được trang bị hệ thống lấy n&eacute;t tự động Dual Pixel với 61 điểm AF bao gồm 41 điểm lấy n&eacute;t chữ thập. b&ecirc;n cạnh đ&oacute;, c&ocirc;ng nghệ Pixel RAW tăng khả năng lấy n&eacute;t v&agrave; chất lượng h&igrave;nh ảnh. Với hệ thống lấy n&eacute;t n&agrave;y, bạn sẽ kh&ocirc;ng bỏ lở bất kỳ khoảnh khắc n&agrave;o trong cuộc sống.</span><br style="box-sizing: border-box; outline: none;" />\r\n	&nbsp;</p>\r\n<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px; color: rgb(68, 68, 68); font-family: Arial; text-align: center;">\r\n	<span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;"><img alt="Máy Ảnh Canon EOS 5D Mark IV (Body)" src="http://binhminhdigital.com/StoreData/Product/6472/may-anh-Canon-5D-Mark-IV%20(4).jpg" style="box-sizing: border-box; outline: none; max-width: 100%; max-height: 100%; line-height: 20px;" /></span></div>\r\n<p>\r\n	&nbsp;</p>\r\n<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px;">\r\n	<span style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); text-align: justify; font-size: 14px; font-family: arial;"><strong style="box-sizing: border-box; outline: none;"><em style="box-sizing: border-box; outline: none;">Dải ISO rộng</em></strong></span></div>\r\n<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px;">\r\n	&nbsp;</div>\r\n<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px;">\r\n	<span style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); text-align: justify; font-family: arial;"><span style="box-sizing: border-box; outline: none; font-size: 14px;"><span style="box-sizing: border-box; outline: none;"><strong style="box-sizing: border-box; outline: none;">M&aacute;y ảnh Canon EOS 5D Mark IV</strong></span>&nbsp;hỗ trợ ISO từ 100-32000 v&agrave; ISO mở rộng l&ecirc;n đến 50-102.400 cho khả năng khử nhiễu tốt hơn, đảm bảo được những bức ảnh thật sự sắc n&eacute;t trong m&ocirc;i trường thiếu s&aacute;ng.&nbsp;</span></span></div>\r\n<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px;">\r\n	&nbsp;</div>\r\n<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px; font-size: 14px;">\r\n	<span style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); text-align: justify; font-family: arial;"><strong style="box-sizing: border-box; outline: none;"><em style="box-sizing: border-box; outline: none;">M&agrave;n h&igrave;nh cảm ứng LCD 3.2 inch</em></strong></span></div>\r\n<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px;">\r\n	&nbsp;</div>\r\n<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px;">\r\n	<span style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); text-align: justify; font-size: 14px; font-family: arial;">T&iacute;ch hợp m&agrave;n h&igrave;nh cảm ứng với giao diện người d&ugrave;ng ho&agrave;n to&agrave;n mới c&ugrave;ng khả năng chọn nhanh điểm lấy n&eacute;t bằng thao t&aacute;c chạm. Với m&agrave;n h&igrave;nh n&agrave;y, người d&ugrave;ng c&oacute; thể</span></div>\r\n<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px; color: rgb(68, 68, 68); font-family: Arial;">\r\n	<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px;">\r\n		&nbsp;</div>\r\n	<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px; text-align: center;">\r\n		<span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;"><img alt="Máy Ảnh Canon EOS 5D Mark IV (Body)" src="http://binhminhdigital.com/StoreData/Product/6472/may-anh-Canon-5D-Mark-IV%20(2).jpg" style="box-sizing: border-box; outline: none; max-width: 100%; max-height: 100%; line-height: 20px;" /></span></div>\r\n	<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px;">\r\n		&nbsp;</div>\r\n	<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px; font-size: 14px;">\r\n		<span style="box-sizing: border-box; outline: none; text-align: justify; font-family: arial;"><strong style="box-sizing: border-box; outline: none;"><em style="box-sizing: border-box; outline: none;">Khả năng quay phim 4K</em></strong></span></div>\r\n	<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px;">\r\n		&nbsp;</div>\r\n	<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px; font-size: 14px;">\r\n		<span style="box-sizing: border-box; outline: none; text-align: justify; font-family: arial;">Về khả năng quay phim, Canon 5D Mark IV c&oacute; thể quay video ở định dạng 4K chuẩn DCI (4.096x2.160) ở tốc độ 30 khung h&igrave;nh/gi&acirc;y. Trong đ&oacute; c&oacute; chế độ quay Video HDR được coi l&agrave; rất tiện lợi với nhiều m&ocirc;i trường ch&ecirc;nh s&aacute;ng phức tạp. M&aacute;y cũng hỗ trợ quay Slow-Motion v&agrave; Time-lapse. &nbsp;</span></div>\r\n	<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px; text-align: center;">\r\n		&nbsp;</div>\r\n	<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px; font-size: 14px;">\r\n		<span style="box-sizing: border-box; outline: none; text-align: justify; font-family: arial;"><strong style="box-sizing: border-box; outline: none;">Kết nối</strong></span></div>\r\n	<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px;">\r\n		&nbsp;</div>\r\n	<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px; font-size: 14px;">\r\n		<span style="box-sizing: border-box; outline: none; text-align: justify; font-family: arial;">Ngo&agrave;i ra, h&atilde;ng cũng trang bị cho&nbsp;<span style="box-sizing: border-box; outline: none;">m&aacute;y ảnh Canon EOS 5D Mark IV</span>&nbsp;hệ thống định vị GPS c&oacute; thể hoạt động ngay khi tắt m&aacute;y - cho ph&eacute;p ảnh chụp được lưu vị tr&iacute; ngay d&ugrave; người d&ugrave;ng mới chỉ bật m&aacute;y l&ecirc;n. Những kết nối hiện diện gồm: Wi-Fi, NFC, USB 3.0, mini HDMI...&nbsp;</span></div>\r\n	<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px; font-size: 14px;">\r\n		&nbsp;</div>\r\n</div>\r\n<div class="product-title-recap" style="box-sizing: border-box; outline: none; text-transform: uppercase; font-size: 14px; font-weight: 600; border-bottom: 1px solid rgb(221, 221, 221); margin-bottom: 5px; color: rgb(68, 68, 68); font-family: Arial;">\r\n	T&Iacute;NH NĂNG NỔI BẬT</div>\r\n<div style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">\r\n	-&nbsp;<strong style="box-sizing: border-box; outline: none;"><a href="https://binhminhdigital.com/canon-eos-5d-mark-iv-body.html" style="box-sizing: border-box; outline: none; text-decoration: none; color: rgb(68, 68, 68);" target="_blank" title="Máy ảnh Canon EOS 5D Mark IV">M&aacute;y ảnh Canon EOS 5D Mark IV</a></strong></div>\r\n<p>\r\n	<span style="color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">- Cảm biến: 30MP Full-Frame (30.4 triệu điểm ảnh hữu dụng)</span><br style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;" />\r\n	<span style="color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">- Chip xử l&yacute; h&igrave;nh ảnh: DIGIC 6+</span><br style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;" />\r\n	<span style="color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">- Số điểm n&eacute;t AF: 61 điểm với điểm lấy n&eacute;t 41 cross-points</span><br style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;" />\r\n	<span style="color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">- Dual Pixel RAW</span><br style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;" />\r\n	<span style="color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">- Loại k&iacute;nh ngắm: Khung ngắm c&ocirc;ng nghệ gương phản chiếu 5 mặt (pentaprism)</span><br style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;" />\r\n	<span style="color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">- M&agrave;n h&igrave;nh LCD ch&iacute;nh: M&agrave;n h&igrave;nh tinh thể lỏng m&agrave;u TFT 3.2 inches, Cảm ứng ho&agrave;n to&agrave;n,</span><br style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;" />\r\n	<span style="color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">- Khả năng quay video: 4K</span><br style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;" />\r\n	<span style="color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">- Chế độ đo s&aacute;ng: Hệ thống bộ cảm biến đo s&aacute;ng RGB+IR xấp xỉ 150.000 pixel</span><br style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;" />\r\n	<span style="color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">- Chế độ khử flicker</span><br style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;" />\r\n	<span style="color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">- T&iacute;ch hợp: kết nối Wi-Fi v&agrave; NFC</span><br style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;" />\r\n	<span style="color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">- Thẻ nhớ: SD/ SDHC/ SDXC, CompactFlash Type II</span><br style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;" />\r\n	<span style="color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">- Tuổi thọ pin (theo CIPA): 900 tấm khi sạc đầy</span><br style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;" />\r\n	<span style="color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">- Cổng kết nối: USB 3.0, HDMI</span><br style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;" />\r\n	<span style="color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">- K&iacute;ch thước: 150.7 x 116.4 x 75.9mm</span><br style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;" />\r\n	<span style="color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">- Khối lượng: 890g</span></p>\r\n', '<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px;">\r\n	<span style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); text-align: justify; font-size: 14px; font-family: arial;">Mới đ&acirc;y, những người y&ecirc;u th&iacute;ch bộ m&ocirc;n nhiếp ảnh như vỡ &ograve;a khi m&agrave; h&atilde;ng Canon ra mắt một si&ecirc;u phẩm mới&nbsp;<a href="https://binhminhdigital.com/may-anh/" style="box-sizing: border-box; outline: none; text-decoration: none; color: rgb(68, 68, 68);" target="_blank">m&aacute;y ảnh</a><strong>&nbsp;Canon EOS 5D Mark IV.</strong> Chiếc DSLR n&agrave;y đ&atilde; đ&aacute;p ứng được sự kỳ vọng m&agrave; tất cả mọi người mong đợi với những cải tiến vượt bậc bởi những c&ocirc;ng nghệ ti&ecirc;n tiến nhất hiện nay đem đến cho người d&ugrave;ng những tiện &iacute;ch nổi trội.&nbsp;</span></div>\r\n<div>\r\n	&nbsp;</div>\r\n', 1500000, 'may-anh-Canon-5D-Mark-IV_(1)1.jpg', '["canon-eos-5d-mark-iv.jpg","may-anh-Canon-5D-Mark-IV_(1).jpg","may-anh-Canon-5D-Mark-IV_(4).jpg"]', 1477815298, 1477815833, 12, '', '', '1 năm', 0, 0, 5, 1, 'Túi đựng cao cấp, ba lô du lịch và 1 USB 32GB', '', '', '0'),
(3, 1, 'Tivi Akai', 0, '5000000.0000', '<p font-size:="" helvetica="" style="margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: " text-align:="">\r\n	Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular..</p>\r\n<div>\r\n	&nbsp;</div>\r\n', '<p font-size:="" helvetica="" style="margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: " text-align:="">\r\n	Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular..</p>\r\n<div>\r\n	&nbsp;</div>\r\n', 0, 'product1.jpg', '', 0, 1477815525, 66, '', '', '12 tháng', 0, 2, 13, 3, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0'),
(4, 1, 'Tivi Panasonic', 0, '6000000.0000', '<p style="margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;">\r\n	Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular..</p>\r\n<div>\r\n	&nbsp;</div>\r\n', '<p style="margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;">\r\n	Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular..</p>\r\n<div>\r\n	&nbsp;</div>\r\n', 0, 'product3.jpg', '', 0, 2147483647, 19, '', '', '12 tháng', 0, 0, 12, 3, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0'),
(5, 1, 'Tivi Samsung', 0, '5500000.0000', '<p style="margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;">\r\n	Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular..</p>\r\n<div>\r\n	&nbsp;</div>\r\n', '<p style="margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;">\r\n	Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular..</p>\r\n<div>\r\n	&nbsp;</div>\r\n', 0, 'product4.jpg', '', 0, 2147483647, 12, '', '', '12 tháng', 0, 5, 5, 1, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0'),
(6, 1, 'Tivi LG 5000', 0, '5000000.0000', '<p style="margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;">\r\n	Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular..</p>\r\n<div>\r\n	&nbsp;</div>\r\n', '<p style="margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;">\r\n	Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular..</p>\r\n<div>\r\n	&nbsp;</div>\r\n', 0, 'product5.jpg', '', 0, 2147483647, 2, '', '', '12 tháng', 0, 0, 5, 1, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0'),
(7, 1, 'Tivi Toshiba', 0, '6200000.0000', '<p style="margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;">\r\n	Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular..</p>\r\n<div>\r\n	&nbsp;</div>\r\n', '<p style="margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;">\r\n	Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular..</p>\r\n<div>\r\n	&nbsp;</div>\r\n', 400000, 'product6.jpg', '', 0, 2147483647, 122, '', '', '12 tháng', 0, 1, 25, 6, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0'),
(8, 1, 'Tivi JVC 500', 0, '10000000.0000', '<p style="margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;">\r\n	Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular..</p>\r\n<div>\r\n	&nbsp;</div>\r\n', '<p style="margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; text-align: justify;">\r\n	Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular..</p>\r\n<div>\r\n	&nbsp;</div>\r\n', 500000, 'product7.jpg', '["Chrysanthemum.jpg","Desert.jpg"]', 0, 2147483647, 139, '', '', '12 tháng', 0, 3, 22, 6, 'USB 4G', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0'),
(9, 1, 'Tivi LG 520', 0, '5400000.0000', '<p font-size:="" helvetica="" style="margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: " text-align:="">\r\n	Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular..</p>\r\n<div>\r\n	&nbsp;</div>\r\n', '<p font-size:="" helvetica="" style="margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: " text-align:="">\r\n	Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular..</p>\r\n<div>\r\n	&nbsp;</div>\r\n', 0, 'product13.jpg', 'a:0:{}', 0, 2147483647, 80, '', '', '12 tháng', 0, 0, 12, 3, '0', 'https://www.youtube.com/watch?v=zAEYQ6FDO5U', '', '0'),
(16, 2, 'MÁY ẢNH Fujifilm FinePix S2950 Digital', 0, '16500000.0000', '<p>\r\n	<strong style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: arial; font-size: 14px; text-align: justify;"><span style="box-sizing: border-box; outline: none;">M&aacute;y Ảnh Fujifilm FinePix S8600</span></strong><span style="color: rgb(68, 68, 68); font-family: arial; font-size: 14px; text-align: justify;">&nbsp;với thiết kế đầy s&aacute;ng tạo, nhiều lựa chọn m&agrave;u sắc t&ugrave;y theo phong c&aacute;ch của bạn. L&agrave; sự kết hợp giữa những đường n&eacute;t tinh xảo, độc đ&aacute;o, nhỏ gọn nhưng kh&ocirc;ng k&eacute;m phần mạnh mẽ, chiếc m&aacute;y ảnh</span><span style="color: rgb(68, 68, 68); font-family: arial; font-size: 14px; text-align: justify;">&nbsp;n&agrave;y thật sự l&agrave; lựa chọn kh&ocirc;ng thể bỏ qua d&agrave;nh cho bạn trong những hoạt động thường ng&agrave;y.</span></p>\r\n<p>\r\n	<strong style="color: rgb(68, 68, 68); font-family: arial; font-size: 14px; text-align: justify; box-sizing: border-box; outline: none;">Cảm biến ảnh CCD 16 MP</strong></p>\r\n<p>\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<span style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); text-align: justify; font-size: 14px; font-family: arial;"><strong style="box-sizing: border-box; outline: none;"><a href="https://binhminhdigital.com/may-anh/" style="box-sizing: border-box; outline: none; text-decoration: none; color: rgb(68, 68, 68);" target="_blank" title="Máy ảnh">M&aacute;y ảnh</a></strong>&nbsp;c&oacute; một bộ cảm biến ảnh CCD 16 MP. Bộ cảm biến n&agrave;y c&oacute; thể gi&uacute;p S8600 tăng tốc độ 8 khung h&igrave;nh mỗi gi&acirc;y ở độ ph&acirc;n giải đầy đủ. Chế độ ổn định h&igrave;nh ảnh nhờ cảm biến ảnh CCD 16 MP cho ph&eacute;p bạn khắc phục được hiện tượng rung, mờ khi chụp lại những khoảng khắc đang chuyển động. Sẽ mang đến cho bạn những h&igrave;nh ảnh sắc n&eacute;t, trung thực nhất. N&oacute; c&oacute; độ nhạy s&aacute;ng l&ecirc;n đến 12.800.</span><br style="box-sizing: border-box; outline: none;" />\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<span style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); text-align: justify; font-size: 14px; font-family: arial;"><strong style="box-sizing: border-box; outline: none;">Ống k&iacute;nh</strong></span><br style="box-sizing: border-box; outline: none;" />\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<span style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); text-align: justify; font-size: 14px; font-family: arial;">Gồm một&nbsp;<strong style="box-sizing: border-box; outline: none;">ống k&iacute;nh</strong>&nbsp;Fujinon 36x zoom quang học linh hoạt, cung cấp view đương 25-900mm. cho ph&eacute;p người d&ugrave;ng c&oacute; được tiếp cận nhiều hơn một ch&uacute;t trong chụp ảnh xa . Hơn nữa, ống k&iacute;nh mới c&oacute; thể thu đ&oacute;ng mở l&agrave;m cho body của S8600 nhỏ gọn khi kh&ocirc;ng sử dụng. Với việc hỗ trợ ống k&iacute;nh zoom 36x v&agrave; khẩu độ từ f/2.9 tới f/6.9, m&aacute;y ảnh c&oacute; thể dễ d&agrave;ng giảm quang sai v&agrave; tăng chất lượng h&igrave;nh ảnh một c&aacute;ch nhanh ch&oacute;ng v&agrave; vượt trội. Th&ecirc;m v&agrave;o đ&oacute;, chế độ Super Macro, hỗ trợ chụp macro 1 cm cho ph&eacute;p người d&ugrave;ng c&oacute; thể chụp c&aacute;c đối tượng ở xa nhưng vẫn đảm bảo h&igrave;nh ảnh sắc n&eacute;t, r&otilde; r&agrave;ng qua ống k&iacute;nh của S8600.</span></p>\r\n<p>\r\n	<strong style="color: rgb(68, 68, 68); font-family: arial; font-size: 14px; text-align: justify; box-sizing: border-box; outline: none;">M&agrave;n h&igrave;nh</strong></p>\r\n<p>\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<span style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); text-align: justify; font-size: 14px; font-family: arial;">Tr&ecirc;n bảng điều khiển m&agrave;n h&igrave;nh LCD 3,0 inch gi&uacute;p dễ d&agrave;ng tương t&aacute;c v&agrave; xem lại h&igrave;nh ảnh chụp. K&iacute;ch thước tương tự như m&agrave;n h&igrave;nh được sử dụng trong c&aacute;c S4800,&nbsp; với khoảng 460.000 dots dễ d&agrave;ng xem văn bản .</span><br style="box-sizing: border-box; outline: none;" />\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<span style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); text-align: justify; font-size: 14px; font-family: arial;"><strong style="box-sizing: border-box; outline: none;">Chia sẻ h&igrave;nh ảnh qua c&aacute;c trang mạng x&atilde; hội</strong></span><br style="box-sizing: border-box; outline: none;" />\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<span style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); text-align: justify; font-size: 14px; font-family: arial;">Một trong những t&iacute;nh năng tuyệt vời của&nbsp;<strong style="box-sizing: border-box; outline: none;"><span style="box-sizing: border-box; outline: none;">m<span style="box-sizing: border-box; outline: none;">&aacute;y Ảnh Fujifilm FinePix S8600</span></span></strong>&nbsp;được người d&ugrave;ng v&ocirc; c&ugrave;ng y&ecirc;u th&iacute;ch ch&iacute;nh l&agrave; khả năng chia sẻ h&igrave;nh ảnh qua c&aacute;c k&ecirc;nh mạng x&atilde; hội như Youtube, Facebook, Twitter &hellip;một c&aacute;ch nhanh ch&oacute;ng.</span></p>\r\n<p>\r\n	<strong style="color: rgb(68, 68, 68); font-family: arial; font-size: 14px; text-align: justify; box-sizing: border-box; outline: none;">Quay phim HD độ ph&acirc;n giải 720p/30fps</strong></p>\r\n<p>\r\n	<span style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); text-align: justify; font-size: 14px; font-family: arial;">&nbsp;</span><br style="box-sizing: border-box; outline: none;" />\r\n	<span style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); text-align: justify; font-size: 14px; font-family: arial;"><span style="box-sizing: border-box; outline: none;"><strong style="box-sizing: border-box; outline: none;"><span style="box-sizing: border-box; outline: none;">M&aacute;y Ảnh Fujifilm FinePix S8600</span></strong></span>&nbsp;ngo&agrave;i việc sở hữu m&agrave;n h&igrave;nh LCD 3.0 inch v&agrave; 460K-dot, đồng thời chế độ quay video cũng được n&acirc;ng cấp. Fuji S8600 c&oacute; thể quay video độ n&eacute;t cao ở độ ph&acirc;n giải 1.280 x 720 ở tốc độ 30fps. Chế độ video tr&ecirc;n S8600 cũng bao gồm một t&ugrave;y chọn. Điều n&agrave;y gi&uacute;p người d&ugrave;ng c&oacute; thể dễ d&agrave;ng ghi lại tất cả những khoảng khắc tuyệt vời trong cuộc sống của m&igrave;nh.</span></p>\r\n<p>\r\n	<span style="color: rgb(68, 68, 68); font-family: Arial; font-size: 14px; font-weight: 600; text-transform: uppercase;">T&Iacute;NH NĂNG NỔI BẬT</span></p>\r\n<p>\r\n	<span style="color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">- Cảm biến CCD 16.0 megapixel</span></p>\r\n<div style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">\r\n	- Ti&ecirc;u cự &nbsp;25 - 900mm&nbsp;</div>\r\n<div style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">\r\n	- M&agrave;n h&igrave;nh &nbsp;3.0-inch</div>\r\n<div style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">\r\n	- ISO 100 -6400</div>\r\n<div style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">\r\n	- Zoom quang 36x &nbsp;</div>\r\n<div style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">\r\n	- Tốc độ m&agrave;n trập 1 - 1/4000gi&acirc;y</div>\r\n<div style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">\r\n	- Chống rung quang học</div>\r\n<div style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">\r\n	- Quay phim HD 1280 x 720 30p</div>\r\n<div style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">\r\n	- Sử dụng 3 pin AA</div>\r\n<div style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">\r\n	<strong style="box-sizing: border-box; outline: none;">- Phụ kiện đi k&egrave;m:</strong>&nbsp;<em style="box-sizing: border-box; outline: none;">Pin AA x 3, D&acirc;y đeo, Nắp ống k&iacute;nh, S&aacute;ch HDSD</em></div>\r\n', '<p>\r\n	<strong style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: arial; font-size: 14px; text-align: justify;"><span style="box-sizing: border-box; outline: none;">M&aacute;y Ảnh Fujifilm FinePix S8600</span></strong><span style="color: rgb(68, 68, 68); font-family: arial; font-size: 14px; text-align: justify;">&nbsp;với thiết kế đầy s&aacute;ng tạo, nhiều lựa chọn m&agrave;u sắc t&ugrave;y theo phong c&aacute;ch của bạn. L&agrave; sự kết hợp giữa những đường n&eacute;t tinh xảo, độc đ&aacute;o, nhỏ gọn nhưng kh&ocirc;ng k&eacute;m phần mạnh mẽ, chiếc m&aacute;y ảnh</span><span style="color: rgb(68, 68, 68); font-family: arial; font-size: 14px; text-align: justify;">&nbsp;n&agrave;y thật sự l&agrave; lựa chọn kh&ocirc;ng thể bỏ qua d&agrave;nh cho bạn trong những hoạt động thường ng&agrave;y.</span></p>\r\n', 500000, 'f11.jpg', '["f1.jpg","f2.jpg","f3.jpg"]', 2147483647, 1477640292, 388, '', '', '1 năm rưỡi', 0, 0, 16, 4, 'USB 16Gb', '', '', '0'),
(18, 2, 'MÁY ẢNH CANON EOS 1D X MARK II (BODY)', 0, '139000000.0000', '<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px; color: rgb(68, 68, 68); font-family: Arial; text-align: justify;">\r\n	<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px; text-align: center;">\r\n		<h1 class="page-title border-bottom" style="box-sizing: border-box; outline: none; font-weight: normal; text-transform: uppercase; font-size: 20px; margin: 20px 0px 0px; line-height: 26px; border-bottom: 1px solid rgb(221, 221, 221); padding-bottom: 20px;">\r\n			<span style="box-sizing: border-box; outline: none; font-family: arial; font-size: 18px;"><span id="ctl00__contentPlaceHolderMain__ctrlProduct__labelProductName" style="box-sizing: border-box; outline: none;">M&Aacute;Y ẢNH CANON EOS-1D X MARK II</span></span></h1>\r\n	</div>\r\n	<span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;"><strong style="box-sizing: border-box; outline: none;">M&aacute;y ảnh Canon EOS-1D X Mark II</strong>&nbsp;l&agrave; phi&ecirc;n bản n&acirc;ng cấp của EOS 1DX, chiếc&nbsp;<a href="http://binhminhdigital.com/may-anh/" style="box-sizing: border-box; outline: none; text-decoration: none; color: rgb(68, 68, 68);"><strong style="box-sizing: border-box; outline: none;">m&aacute;y ảnh</strong></a>&nbsp;d&agrave;nh cho những nhiếp ảnh gia chuy&ecirc;n nghiệp, chiếc m&aacute;y ảnh khẳng định một đẳng cấp mới, một ti&ecirc;u chuẩn mới của những chiếc DSLR.</span><br style="box-sizing: border-box; outline: none;" />\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px; text-align: center;">\r\n		<span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;"><img alt="Máy Ảnh Canon EOS-1D X Mark II (Body)" src="https://binhminhdigital.com/StoreData/Product/6471/21.jpg" style="box-sizing: border-box; outline: none; max-width: 100%; max-height: 100%; line-height: 20px;" /></span></div>\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;"><strong style="box-sizing: border-box; outline: none;">Thiết kế</strong></span><br style="box-sizing: border-box; outline: none;" />\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;">Với th&acirc;n m&aacute;y được l&agrave;m bằng hợp kim magi&ecirc; chống bụi v&agrave; thời tiết để sử dụng trong m&ocirc;i trường khắc nghiệt, thiết kế của chiếc m&aacute;y mang đậm phong c&aacute;ch mạnh mẽ của một chiếc DSLR, kế thừa những đường n&eacute;t c&aacute; t&iacute;nh của người tiền nhiệm.</span><br style="box-sizing: border-box; outline: none;" />\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;"><strong style="box-sizing: border-box; outline: none;">Cảm biến</strong></span><br style="box-sizing: border-box; outline: none;" />\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;"><strong style="box-sizing: border-box; outline: none;">M&aacute;y ảnh Canon EOS-1D X Mark II</strong>&nbsp;sử dụng bộ cảm biến full-frame 20.2MP CMOS v&agrave; bộ xử l&yacute; h&igrave;nh ảnh DIGIC k&eacute;p 6 + chụp li&ecirc;n tục l&ecirc;n đến 16 fps ở chế độ live view, 14 fps ở chế độ to&agrave;n thời gian AF v&agrave; AE. C&aacute;c cảm biến v&agrave; bộ xử l&yacute; kết hợp quay video 4K ở 60 fps v&agrave; quay Full HD 1080p ở 120 fps.</span><br style="box-sizing: border-box; outline: none;" />\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px; text-align: center;">\r\n		<span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;"><img alt="Máy Ảnh Canon EOS-1D X Mark II (Body)" src="https://binhminhdigital.com/StoreData/Product/6471/41.jpg" style="box-sizing: border-box; outline: none; max-width: 100%; max-height: 100%; line-height: 20px;" /></span></div>\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;"><strong style="box-sizing: border-box; outline: none;">Chế độ lấy n&eacute;t</strong></span><br style="box-sizing: border-box; outline: none;" />\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;">Chế độ lấy n&eacute;t 61 điểm mật độ cao hệ thống lưới AF II apt, trong đ&oacute; bao gồm 41 điểm cross-type cho một mức độ ch&iacute;nh x&aacute;c cao trong điều kiện &aacute;nh s&aacute;ng kh&aacute;c nhau, v&agrave; quay video được tăng cường bộ xử l&yacute; Pixel CMOS AF, AF nhanh ch&oacute;ng v&agrave; c&oacute; thể điều khiển trong live view. Chiếc m&aacute;y ảnh n&agrave;y c&oacute; khả năng bảo phủ phạm vi lấy n&eacute;t tự động rộng hơn với độ ch&iacute;nh x&aacute;c cao hơn.</span><br style="box-sizing: border-box; outline: none;" />\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;"><strong style="box-sizing: border-box; outline: none;">&nbsp;M&agrave;n h&igrave;nh</strong></span><br style="box-sizing: border-box; outline: none;" />\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;"><strong style="box-sizing: border-box; outline: none;">M&aacute;y ảnh Caon EOS-1D X Mark II</strong>&nbsp;trang bị một m&agrave;n h&igrave;nh cảm ứng LCD 3.2&quot; 1.620.000 điểm ảnh, độ ph&acirc;n giải cao gi&uacute;p c&aacute;c nhiếp ảnh gia dể d&agrave;ng&nbsp; theo d&otilde;i xem trực tiếp v&agrave; xem lại h&igrave;nh ảnh một c&aacute;ch trung thực nhất. Sản phẩm cũng được t&iacute;nh hợp ống ngắm th&ocirc;ng minh Intelligent Viewfinder II cho ph&eacute;p hiển thị c&aacute;c th&ocirc;ng tin để thực hiện thay đổi c&aacute;c thiết lập m&agrave; kh&ocirc;ng cần rời mắt khỏi đối tượng.</span><br style="box-sizing: border-box; outline: none;" />\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px; text-align: center;">\r\n		<span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;"><img alt="Máy Ảnh Canon EOS-1D X Mark II (Body)" src="https://binhminhdigital.com/StoreData/Product/6471/11.jpg" style="box-sizing: border-box; outline: none; max-width: 100%; max-height: 100%; line-height: 20px;" /></span></div>\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;"><strong style="box-sizing: border-box; outline: none;">Tốc độ chụp</strong></span><br style="box-sizing: border-box; outline: none;" />\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;">Ở chế độ căng n&eacute;t One-Shot v&agrave; AI Servo, tốc độ chụp cao nhất c&oacute; thể l&ecirc;n đến 12 khung h&igrave;nh/gi&acirc;y. C&aacute;c tay m&aacute;y c&ograve;n c&oacute; thể chọn chế độ chụp si&ecirc;u tốc cho ph&eacute;p chụp 14khung h&igrave;nh/gi&acirc;y.&nbsp;</span><span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;">Với hệ thống gương lật mới, bộ dừng gương lật Quad Active c&oacute; cơ chế bật trả v&agrave; kho&aacute; ri&ecirc;ng biệt v&agrave; bộ c&acirc;n bằng k&eacute;p trong EOS-1D X l&agrave;m giảm việc rung lắc, tăng khả năng ổn định h&igrave;nh ảnh v&agrave; đẩy cao tốc độ chụp. Cơ chế n&agrave;y gi&uacute;p c&aacute;c nhiếp ảnh gia c&oacute; thể bắt lấy bất k&igrave; khoảnh khắc n&agrave;o.</span><strong style="font-family: arial; font-size: 14px; box-sizing: border-box; outline: none;">Wifi</strong></div>\r\n<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px; color: rgb(68, 68, 68); font-family: Arial; text-align: justify;">\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;"><strong style="box-sizing: border-box; outline: none;">M&aacute;y ảnh canon EOS-1D X Mark II</strong>&nbsp;cũng hỗ trợ chia sẻ h&igrave;nh ảnh qua Wi-Fi, hỗ trợ khe cắm thẻ nhớ CFast v&agrave; CompactFlash, , cũng như điều khiển m&aacute;y ảnh kh&ocirc;ng d&acirc;y từ xa, th&ocirc;ng qua c&aacute;c t&ugrave;y chọn c&aacute;c tập tin WFT-E8A kh&ocirc;ng d&acirc;y.</span><br style="box-sizing: border-box; outline: none;" />\r\n	<br style="box-sizing: border-box; outline: none;" />\r\n	<div style="box-sizing: border-box; outline: none; max-width: 100%; line-height: 20px; text-align: center;">\r\n		<span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;"><img alt="Máy Ảnh Canon EOS-1D X Mark II (Body)" src="https://binhminhdigital.com/StoreData/Product/6471/31.jpg" style="box-sizing: border-box; outline: none; max-width: 100%; max-height: 100%; line-height: 20px;" /></span></div>\r\n	<p>\r\n		<br style="box-sizing: border-box; outline: none;" />\r\n		<span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;"><strong style="box-sizing: border-box; outline: none;">Quay phim 4k</strong></span><br style="box-sizing: border-box; outline: none;" />\r\n		<br style="box-sizing: border-box; outline: none;" />\r\n		<span style="box-sizing: border-box; outline: none; font-size: 14px; font-family: arial;">Được thiết kế cho những người chuy&ecirc;n chụp h&igrave;nh v&agrave; quay video, hỗ trợ quay video 4K ghi độ ph&acirc;n giải l&ecirc;n đến 60 fps ở 800 Mbps, quay HD 1080p đầy đủ tại 120 fps, 360 Mbps cho ph&aacute;t lại chuyển động chậm .</span></p>\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<div class="product-title-recap" style="box-sizing: border-box; outline: none; text-transform: uppercase; font-size: 14px; font-weight: 600; border-bottom: 1px solid rgb(221, 221, 221); margin-bottom: 5px; color: rgb(68, 68, 68); font-family: Arial;">\r\n	T&Iacute;NH NĂNG NỔI BẬT</div>\r\n<div style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">\r\n	-<strong style="box-sizing: border-box; outline: none;"><a href="#" style="box-sizing: border-box; outline: none; text-decoration: none; color: rgb(68, 68, 68);" target="_blank">M&aacute;y Ảnh Canon EOS-1D X Mark II (Body)</a></strong></div>\r\n<div style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">\r\n	-Cảm biến h&igrave;nh ảnh full-frame 20.2MP CMOS&nbsp;</div>\r\n<div style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">\r\n	-Bộ xử l&yacute; h&igrave;nh ảnh DIGIC k&eacute;p 6 +</div>\r\n<div style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">\r\n	-ISO 100-51.200 với sự mở rộng xuống đến 50 v&agrave; l&ecirc;n tới 409.600</div>\r\n<div style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">\r\n	-Hệ thống lấy n&eacute;t với 61 điểm lấy n&eacute;t</div>\r\n<div style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">\r\n	-41 điểm lấy n&eacute;t cross-type.</div>\r\n<div style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">\r\n	-C&oacute; khả năng quay video 4K 60 fps ở 800 Mbps, quay HD 1080p đầy đủ tại 120 fps, 360 Mbps</div>\r\n<div style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: Arial; font-size: 14px;">\r\n	-Khả năng chụp li&ecirc;n tục 14 fps&nbsp;</div>\r\n', '<p>\r\n	<strong style="box-sizing: border-box; outline: none; color: rgb(68, 68, 68); font-family: arial; font-size: 14px; text-align: justify;">M&aacute;y ảnh Canon EOS-1D X Mark II</strong><span style="color: rgb(68, 68, 68); font-family: arial; font-size: 14px; text-align: justify;">&nbsp;l&agrave; phi&ecirc;n bản n&acirc;ng cấp của EOS 1DX, chiếc&nbsp;</span><a href="http://binhminhdigital.com/may-anh/" style="box-sizing: border-box; outline: none; text-decoration: none; color: rgb(68, 68, 68); font-family: arial; font-size: 14px; text-align: justify;"><strong style="box-sizing: border-box; outline: none;">m&aacute;y ảnh</strong></a><span style="color: rgb(68, 68, 68); font-family: arial; font-size: 14px; text-align: justify;">&nbsp;d&agrave;nh cho những nhiếp ảnh gia chuy&ecirc;n nghiệp, chiếc m&aacute;y ảnh khẳng định một đẳng cấp mới, một ti&ecirc;u chuẩn mới của những chiếc DSLR. </span></p>\r\n<p>\r\n	<strong><span style="color: rgb(68, 68, 68); font-family: arial; font-size: 14px; text-align: justify;">C&oacute; xuất xứ từ Nhật Bản.</span></strong></p>\r\n', 19000000, 'Frontwithlens.jpg', '["11.jpg","21.jpg","31.jpg","41.jpg"]', 1477976656, 1477977492, 7, '', '', '24 Tháng', 0, 0, 0, 0, 'Túi đựng + ba lô cao cấp.', '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE IF NOT EXISTS `slide` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(10) NOT NULL,
  `created` int(11) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `name`, `image_name`, `image_link`, `link`, `info`, `sort_order`, `created`, `updated`) VALUES
(4, 'slide1', '', '2.png', '', '', 1, 2147483647, 2147483647),
(5, 'slide2', '', '3.png', '', '', 2, 2147483647, 2147483647),
(6, 'slide3', '', '4.png', '', '', 3, 2147483647, 2147483647),
(7, 'slide4', '', '5.png', '', '', 4, 2147483647, 2147483647),
(8, 'slide5', '', '6.png', '', '', 5, 2147483647, 2147483647),
(9, 'slide6', '', '7.png', '', '', 6, 2147483647, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE IF NOT EXISTS `support` (
  `id` int(255) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `yahoo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gmail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `skype` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` tinyint(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`id`, `name`, `yahoo`, `gmail`, `skype`, `phone`, `sort_order`) VALUES
(1, 'Hoang van tuyen', 'tuyenht90', 'hoangvantuyencnt@gmail.com', 'tuyencnt90', '016455656556', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(255) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `name`, `phone`, `address`) VALUES
(19, 'dangluunhattan@gmail.com', '123456', '', '', ''),
(21, 'dangluunhattan2@gmail.com', '9a9812268c5b985d76615f7b95366b22', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `id` int(255) NOT NULL,
  `count_view` int(255) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `feature` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `view` int(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `count_view`, `name`, `images`, `intro`, `link`, `feature`, `created`, `view`) VALUES
(10, 0, 'Chuyện Tình Trên Facebook - Hồ Việt Trung [Official]', '1386147113843_video.jpg', '', 'http://www.youtube.com/watch?v=3ZlLyU2L4P0', 1386146497, 2013, 4),
(8, 0, 'Chỉ còn trong mơ & Phải không em', '1386147092891_video.jpg', '', 'http://www.youtube.com/watch?v=RfNJ43HBzOM', 1386146505, 2013, 6),
(7, 0, '[HD] Anh Xin Lỗi - Minh Vương M4U', '1386147058495_video.jpg', '', 'http://www.youtube.com/watch?v=OCZ4D9qT8lI', 1386146502, 2013, 17),
(16, 0, 'Nhốt Em Vào Tim - Hồ Việt Trung [Official]', '1386147135763_video.jpg', '', 'http://www.youtube.com/watch?v=fkDSnN_I_Ig', 0, 1386147135, 0),
(17, 0, 'Chỉ Yêu Mình Em - Châu Khải Phong [Official]', '1386147154302_video.jpg', '', 'http://www.youtube.com/watch?v=l2MydtlKra8', 0, 1386147154, 4),
(18, 0, 'Số Nghèo - Châu Khải Phong [Official]', '138614718279_video.jpg', '', 'http://www.youtube.com/watch?v=LJRvv8U6Dos', 1386147576, 1386147182, 1),
(19, 0, 'Trò Chơi Đắng Cay - Châu Khải Phong [Official]', '138614721063_video.jpg', '', 'http://www.youtube.com/watch?v=3J8d8-YgOlU', 1386147575, 1386147210, 0),
(20, 0, 'Sầu Tím Thiệp Hồng - Quang Lê & Lệ Quyên ( Liveshow Quang Lê )', '1386147271236_video.jpg', '', 'http://www.youtube.com/watch?v=Kd5OrV4Y_bs', 0, 1386147271, 0),
(21, 0, 'Gõ cửa trái tim Quang Lê - Mai Thiên Vân', '1386147292776_video.jpg', '', 'http://www.youtube.com/watch?v=9oVxDQsgXIQ', 1386147577, 1386147292, 0),
(22, 0, 'Cô Hàng Xóm - Quang Lê', '1386147310490_video.jpg', '', 'http://www.youtube.com/watch?v=nA9ub4zlel8', 0, 1386147310, 0),
(23, 0, 'Lam Truong - Mai Mai', '1386147353743_video.jpg', '', 'http://www.youtube.com/watch?v=o1igATj9lMw', 0, 1386147353, 0),
(24, 0, 'Lỡ Yêu Em Rồi - Bằng Kiều', '1386147364632_video.jpg', '', 'http://www.youtube.com/watch?v=HYi-5dM_c34', 0, 1386147364, 0),
(25, 0, 'Bản Tình Cuối - Bằng Kiều', '1386147389790_video.jpg', '', 'http://www.youtube.com/watch?v=pNr7jEQ8LT8', 0, 1386147389, 2),
(26, 1, 'Phút cuối - Bằng Kiều', '1386150063515_video.jpg', '', 'http://www.youtube.com/watch?v=sA_gM6_eqXU', 0, 1386150063, 0),
(27, 0, 'Giấc Mơ (Live) - Bùi Anh Tuấn ft Yanbi', '1386150103768_video.jpg', '', 'http://www.youtube.com/watch?v=XLr463dUNgQ', 0, 1386150103, 0),
(28, 4, 'Anh Nhớ Em - Tuấn Hưng', '1386150121482_video.jpg', '', 'http://www.youtube.com/watch?v=ewNQtt1RiSk', 0, 1386150121, 0),
(29, 0, 'LE QUYEN & TUAN HUNG - Nhu Giac Chiem Bao', '1386150141608_video.jpg', '', 'http://www.youtube.com/watch?v=DaMARvh0kms', 0, 1386150141, 0),
(30, 12, 'Dĩ Vãng Cuộc Tình - Duy Mạnh ft Tuấn Hưng', '140905101897_video.jpg', '', 'http://www.youtube.com/watch?v=g8I-LoBIFgQ', 0, 1409051018, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_group`
--
ALTER TABLE `admin_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`bill_detail_id`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_static`
--
ALTER TABLE `content_static`
  ADD PRIMARY KEY (`id`,`key`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`),
  ADD FULLTEXT KEY `title` (`title`);

--
-- Indexes for table `maker`
--
ALTER TABLE `maker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD FULLTEXT KEY `title` (`title`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `admin_group`
--
ALTER TABLE `admin_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(128) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `content_static`
--
ALTER TABLE `content_static`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `maker`
--
ALTER TABLE `maker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
