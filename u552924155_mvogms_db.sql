-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2024 at 05:52 AM
-- Server version: 10.11.7-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvogms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_list`
--

INSERT INTO `cart_list` (`id`, `client_id`, `product_id`, `quantity`) VALUES
(53, 11, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `vendor_id` int(30) NOT NULL,
  `shop_type_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `vendor_id`, `shop_type_id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(10, 7, 6, 'Home Decor', 'Give your home some warm and new looks using our collection.\r\nWe have a wide collection of budget friendly home decor items which have been upcycled using various old household waste products.\r\nBrowse our collection and give your home a trendy and attractive look.', 1, 0, '2022-06-24 23:33:42', '2022-09-06 21:27:12'),
(11, 8, 7, 'Bottles ', 'Wasted bottles ideal recycling  or for creative artist', 1, 0, '2022-06-25 00:25:34', '2022-06-29 20:04:10'),
(12, 8, 7, 'Amm', 'asadwd', 1, 1, '2022-06-29 20:51:01', '2022-09-07 16:54:56'),
(13, 7, 6, 'Ammy', 'sacscs', 1, 1, '2022-09-06 21:24:12', '2022-09-06 21:24:18'),
(14, 7, 6, 'Men Fashion ', 'Discover thousands of stunning styles in men\'s Fashion, men\'s clothing, menswear and that too at such reasonable prices!!\r\nWe have a huge collection of refurbished men\'s Fashion products.\r\nOld clothes have been given the latest, trendy looks.\r\nBrowse and buy our latest collection!!', 1, 0, '2022-09-06 21:25:21', '2022-09-06 21:25:44'),
(15, 7, 6, 'Womens Fashion', 'We have upcycled, trendy and latest collection.\r\nDiscover women\'s Fashion on our site.\r\nSee top trendy searches and choose the best.\r\nBrowse and buy from a wide range of women\'s clothing at such reasonable prices nowhere else', 1, 0, '2022-09-06 21:26:21', NULL),
(16, 7, 6, 'Jewellery', 'Is your jewellery box looking little sparse?\r\nNot to worry, fill it right up with our wide collection of handmade and refurbished necklace, bracelet, pins,etc.\r\nBrowse our upcycled trendy collection which can give you classy looks.', 1, 0, '2022-09-06 21:26:59', NULL),
(17, 7, 6, 'Toys ', 'Buy handmade and upcycled toys online at best prices.\r\nWe have a variety of toy collections to help you out finding the best for your child.\r\nBuy any type of toy such as sports toys, gaming toys, soft toys, etc. at reasonable prices.', 1, 0, '2022-09-06 21:28:04', NULL),
(18, 7, 6, 'Home Furnishings', 'We have huge collection of very simple and affordable home furnishing items to give your house a well-furnished look.\r\nDiscover wide range of refurbished products which are upcycled.\r\nBrowse our trendy collection of home furnishing at reasonable prices.', 1, 0, '2022-09-06 21:28:33', NULL),
(19, 7, 6, 'Floorings ', 'When it comes to decorating your house, floorings are one of the very first things taken into consideration.\r\nDiscover thousands of trendy and elegant flooring items from our collection at low and reasonable price.\r\nThey are handmade and upcycled.\r\nBrowse and buy from this wide range of collections.', 1, 0, '2022-09-06 21:29:07', NULL),
(20, 7, 6, ' Lawn accessories', 'Much more than an afterthought, lawn accessories can guide how you shape and use your outdoor space and how it feels when you are in it.\r\nExplore a wide range of lawn accessories which are completely upcycled.\r\nChoose the best out of this huge collection of cheap and best items.', 1, 0, '2022-09-06 21:29:32', NULL),
(21, 7, 6, 'Showpieces ', 'When it comes to decorating your house, showpieces play a very vital role.\r\nWe have a huge collection of trendy and classy showpieces made up of old used products.\r\nBrowse and buy the Desired product  of handmade products list.', 1, 0, '2022-09-06 21:29:49', NULL),
(22, 7, 6, 'Home lightening', 'Brighten up your home with beautiful upcycled and refurbished home lightening items from our collection.\r\nWe have a huge collection of home lightening items at cheaper rates .\r\nExplore different home lightening items such as hanging lights, chandeliers, candle holders, etc.at affordable prices.', 1, 0, '2022-09-06 21:30:17', NULL),
(23, 8, 7, 'asfsdf', 'sdfdf', 1, 1, '2022-09-07 16:53:58', '2022-09-07 16:55:01'),
(24, 8, 7, 'sadf', 'xede', 1, 1, '2022-09-07 16:54:39', '2022-09-07 16:55:06'),
(25, 8, 7, 'Paper', 'We go through wide range of various types, textures, shapes, sizes, designs & colours of paper everyday.\r\nMost of this from Newspaper to gift wrap to magazines to junk mails are wasted per day.\r\nPaper comes from trees!!\r\n', 1, 0, '2022-09-08 13:34:12', NULL),
(26, 8, 7, 'Plastics', 'Various types of plastics such as plastic bottles, take-out trays, etc. are common and widely used in our day to day life.\r\nThey are usually thrown here & there.\r\nThey must be recycled as they are not eco-friendly.\r\nMake it available to us & earn satisfactory amount for it!!\r\n', 1, 0, '2022-09-08 13:34:41', NULL),
(27, 8, 7, 'Glass', 'In dustbins, we go through a large number of glass bottles and jars which are of different shapes & sizes.\r\nRecent reports say, Recycling the glass reduces Air Pollution by 20% & Water Pollution by 50%.\r\nSo, don\'t throw them here & there.\r\nSell it to us & Save Environment!!\r\n', 1, 0, '2022-09-08 13:35:29', NULL),
(28, 8, 7, 'Metals', 'In your day to day life, you go through various metal wastes like tin cans, unused keys or various cold drink jars caps.\r\nWe throw them off after drinking.\r\nDon\'t throw.\r\nMake money out of that and sell it to us!!\r\n', 1, 0, '2022-09-08 14:33:04', NULL),
(29, 8, 7, 'Clothing', 'There are times when we are fed up of wearing a particular dress or a particular dress pattern becomes outdated after sometime or it may have some small defects.\r\nIn such cases we usually throw them.\r\nDon\'t throw.\r\nThey can be reused for various purposes e.g. for making rugs, durries, etc.\r\nSell them to us!\r\nGet paid well!!\r\n', 1, 0, '2022-09-08 14:33:43', NULL),
(30, 8, 7, 'Kitchen Items', 'There are various kitchen items that heve turned into a waste like broken utensils, broken boxes, etc.\r\nWe throw them out.\r\nInstead put them to some use.\r\nSell it to us!!\r\nWe\'ll put it to the best use.\r\n', 1, 0, '2022-09-08 14:40:59', NULL),
(31, 8, 7, 'Household Items', 'We go through wide variety of household items which gets damaged everyday in our homes.\r\nThe best way to use your household waste is to sell it to us!\r\nWe will make best use of it!\r\n', 1, 0, '2022-09-08 14:41:33', NULL),
(32, 8, 7, 'Jewellery Findings', 'When a jewellery breaks, it\'s component parts or material used in it\'s making can be reused for various purposes.\r\nRepurposing the broken jewellery to a useful one can be very interesting.\r\nSo don\'t throw it!\r\nSell it to us!\r\n', 1, 0, '2022-09-08 14:42:12', NULL),
(33, 8, 7, 'Wooden Items', '            There are various wooden items          present in our house such as baskets, chairs, tables, shelves, etc.\r\nWhen they break due to some reason, we usually consider them useless and throw them out.\r\n\"Wood comes from trees\"\r\nSo be Environment friendly and don\'t throw them…\r\nSell them to us!!\r\nAnd Save trees!!\r\n', 1, 0, '2022-09-08 14:43:41', NULL),
(34, 8, 7, 'Miscellaneous', 'There are various kinds of household items that get damaged and we throw them into bins.\r\nItems such as plastic bags, bottle caps, egg cartons, cassette cases, old CDs,etc. which are usually thrown when not in use.\r\nWe can repurpose them in various ways.\r\n', 1, 0, '2022-09-08 14:44:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `zip` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `code`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `avatar`, `zip`, `city`, `state`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(10, '202206-00001', 'Aman', NULL, 'Maddeshiya', 'Male', '7860526207', 'Shastri Nagar, Deoria ', 'am4800960@gmail.com', '4f1b72ceb5d0c46bc91b9ebcbc584208', 'uploads/clients/10.png?v=1656237526', '274001', 'Deoria', 'Uttar Pradesh', 1, 0, '2022-06-26 15:28:45', '2022-06-26 15:28:46'),
(11, '202209-00001', 'Aabb', NULL, 'CcDd', 'Female', '1234567890', 'Abcdefghijkl', 'aabbccdd123@gmail.com', 'c9a140d1a756e793ea9a6927c070b6c7', 'uploads/clients/11.png?v=1662649210', '578898', 'Abcd', 'Abcd', 1, 0, '2022-09-08 15:00:10', '2022-09-08 15:00:10'),
(12, '202209-00002', 'Nisha', NULL, 'Km', 'Female', '7894561236', 'Civil Lines, Gorakhpur', 'nkp89760@gmail.com', 'e2aa583d3a5d373381656e8cac11cfd6', 'uploads/clients/12.png?v=1662698764', '273001', 'Gorakhpur', 'Uttar Pradesh', 1, 0, '2022-09-09 04:46:04', '2022-09-09 04:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_id`, `product_id`, `quantity`, `price`, `date_created`) VALUES
(14, 14, 2, 49, '2022-06-26 15:35:04'),
(15, 11, 1, 549, '2022-06-26 16:29:07'),
(16, 12, 1, 900, '2022-06-29 20:30:16'),
(17, 13, 1, 1200, '2022-06-30 00:37:42'),
(18, 12, 1, 900, '2022-06-30 00:41:33'),
(19, 11, 1, 549, '2022-06-30 00:43:13'),
(20, 14, 1, 49, '2022-06-30 00:45:45'),
(21, 11, 1, 549, '2022-07-19 13:11:33'),
(22, 14, 1, 49, '2022-07-19 13:20:25'),
(23, 11, 1, 549, '2022-09-07 16:42:13'),
(24, 11, 1, 549, '2022-09-09 04:49:45'),
(25, 56, 1, 399, '2022-09-10 08:59:29');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `vendor_id` int(30) NOT NULL,
  `total_amount` double NOT NULL DEFAULT 0,
  `delivery_address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `code`, `client_id`, `vendor_id`, `total_amount`, `delivery_address`, `status`, `date_created`, `date_updated`) VALUES
(14, '202206-00001', 10, 8, 98, 'Shastri Nagar, Deoria ', 5, '2022-06-26 15:35:03', '2022-06-29 22:03:28'),
(15, '202206-00002', 10, 7, 549, 'Shastri Nagar, Deoria ', 4, '2022-06-26 16:29:06', '2022-06-29 22:03:15'),
(16, '202206-00003', 10, 7, 900, 'Shastri Nagar, Deoria ', 4, '2022-06-29 20:30:16', '2022-06-29 22:03:06'),
(17, '202206-00004', 10, 7, 1200, 'Shastri Nagar, Deoria ', 0, '2022-06-30 00:37:42', '2022-06-30 00:37:42'),
(18, '202206-00005', 10, 7, 900, 'Shastri Nagar, Deoria ', 0, '2022-06-30 00:41:33', '2022-06-30 00:41:34'),
(19, '202206-00006', 10, 7, 549, 'Shastri Nagar, Deoria ', 0, '2022-06-30 00:43:13', '2022-06-30 00:43:13'),
(20, '202206-00007', 10, 8, 49, 'Shastri Nagar, Deoria ', 5, '2022-06-30 00:45:45', '2022-07-18 22:57:52'),
(21, '202207-00001', 10, 7, 549, 'Shastri Nagar, Deoria ', 0, '2022-07-19 13:11:33', '2022-07-19 13:11:33'),
(22, '202207-00002', 10, 8, 49, 'Shastri Nagar, Deoria ', 4, '2022-07-19 13:20:24', '2022-09-07 16:51:47'),
(23, '202209-00001', 10, 7, 549, 'Shastri Nagar, Deoria ', 5, '2022-09-07 16:42:13', '2022-09-07 16:42:25'),
(24, '202209-00002', 12, 7, 549, 'Civil Lines, Gorakhpur', 0, '2022-09-09 04:49:45', '2022-09-09 04:49:45'),
(25, '202209-00003', 10, 7, 399, 'Shastri Nagar, Deoria ', 0, '2022-09-10 08:59:29', '2022-09-10 08:59:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `vendor_id` int(30) DEFAULT NULL,
  `shop_type_id` int(11) NOT NULL,
  `category_id` int(30) DEFAULT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `vendor_id`, `shop_type_id`, `category_id`, `name`, `description`, `price`, `image_path`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(11, 7, 6, 10, 'Creative bottles ', '&lt;p&gt;A Unique hand painted &amp;amp; decorated decorative with crystal clear vibrant multi colors makes this art unique &amp;amp; beautiful. Ideal gift for birthday, weddings, ceremony, and other festivals and events. Perfect to decorate your house, room, garden, doorways, lawn and indoor items etc. (Package contains three decorative pieces.)&lt;br&gt;&lt;/p&gt;', 549, 'uploads/products/11.png?v=1656094759', 1, 0, '2022-06-24 23:49:18', '2022-06-29 20:13:24'),
(12, 7, 6, 10, 'DESIGNER Decorative Bottle ', '&lt;p&gt;One of a kind hand painted decorative bottle with stylistic lace art filled with Grey &amp;amp; White colors makes this art unique &amp;amp; beautiful. Ideal gift for birthday, weddings, ceremony, and other festivals and events. Perfect to decorate your house, room, garden, doorways, lawn and indoor items etc. (Package contains a two decorative bottles)&lt;br&gt;&lt;/p&gt;', 900, 'uploads/products/12.png?v=1656095027', 1, 0, '2022-06-24 23:53:46', '2022-06-29 20:13:24'),
(13, 7, 6, 10, ' Decoupage Decorative Bottle', '&lt;p&gt;Hand painted on a glass bottle with Non-Toxic Colors - Hand Crafted by a Fevicryl Certified Professional - Handmade with attention to detail - Specially made to bring bright colors to the d&eacute;cor of your home - Recommended to wipe with a soft dry cloth - For Home decor and gifting purpose - Bottle capacity 750 ml Craft Kari is run by a craft expert who is Fevicryl Certified Professional. We bring carefully handcrafted decorative artworks made with all-natural, high quality and non-toxic materials. Our products showcase the beautiful and diverse arts and crafts of our country&lt;br&gt;&lt;/p&gt;', 120, 'uploads/products/13.png?v=1656096039', 1, 0, '2022-06-25 00:10:38', '2022-07-19 13:33:03'),
(14, 8, 7, 11, 'Empty glass bottles and jar ', '&lt;p&gt;Variety Glass Bottles and Jars ideal for making crafts, recycling and many more.&lt;br&gt;&lt;/p&gt;', 49, 'uploads/products/14.png?v=1656097190', 1, 1, '2022-06-25 00:29:49', '2022-09-08 14:57:01'),
(15, 8, 7, 12, 'Ammy', '&lt;p&gt;asadqwd&lt;/p&gt;', 324, 'uploads/products/15.png?v=1656516391', 1, 1, '2022-06-29 20:56:30', '2022-06-29 21:59:16'),
(16, 8, 7, 12, 'Ammy', '&lt;p&gt;drfhgtrghjrtjhtrjhrdth&lt;/p&gt;', 1200, 'uploads/products/16.png?v=1661086438', 1, 0, '2022-08-21 18:23:58', '2022-08-21 18:23:58'),
(17, 8, 6, 11, 'email', '&lt;p&gt;sdaweqfrweqfrgesdse3rerfdsfs&lt;/p&gt;', 23434, 'uploads/products/17.png?v=1661087213', 1, 1, '2022-08-21 18:36:36', '2022-08-28 21:13:16'),
(18, 7, 6, 10, 'Ammy ', '&lt;p&gt;uk&lt;/p&gt;', 1200, 'uploads/products/18.png?v=1662479344', 1, 1, '2022-09-06 21:19:02', '2022-09-06 21:31:45'),
(19, 8, 7, 11, 'qewtrtg', '&lt;p&gt;fdvdfvdvdfr&lt;/p&gt;', 123, NULL, 1, 1, '2022-09-07 16:47:56', '2022-09-07 16:55:15'),
(20, 8, 7, 11, 'wqewqrer', '&lt;p&gt;ewdfwfdcew&lt;/p&gt;', 12, NULL, 1, 1, '2022-09-07 16:49:19', '2022-09-07 16:55:20'),
(21, 8, 7, 25, 'NewsPaper', '&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Newspaper sheet is made from wood pulp and\r\nit\'s a great absorbent too.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Don\'t throw off the newspaper.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;It can be recycled &amp; reused for various\r\nreasons.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Sell your bundles to us and get paid\r\nconsiderably!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 199, 'uploads/products/21.png?v=1662648636', 1, 0, '2022-09-08 14:50:36', '2022-09-08 14:50:56'),
(22, 8, 7, 25, 'Cardboard', '&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;These are basically heavy duty or thick sheets\r\nof paper known for it\'s durability.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;We see this in form of packaging boxes, egg\r\ncartons, shoe boxes, cereal boxes, etc. &amp;amp;&amp;nbsp;\r\nthrow them out.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Don\'t throw!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Sell it to us, we\'ll make best use of it!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 149, 'uploads/products/22.png?v=1662648712', 1, 0, '2022-09-08 14:51:52', '2022-09-08 14:51:52'),
(23, 8, 7, 26, 'Plastic Bottles', '&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Plastic bottles are very much common as a\r\nwaste. &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;We go through this in form of water bottle,\r\ncold drink bottle,etc. available in various colours, shapes &amp;amp; sizes.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;We usually throw them after use.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Don\'t throw!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Sell it to us, we\'ll pay you for this!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 99, 'uploads/products/23.png?v=1662648873', 1, 0, '2022-09-08 14:54:33', '2022-09-08 14:54:33'),
(24, 8, 7, 26, 'Containers', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Various types of\r\ncontainers like&amp;nbsp; plastic bowls, which\r\nhave not been used for long time or they are broken are usually thrown out in\r\ndustbins.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;They are not\r\ndecomposable!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Don\'t throw them!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Sell them to us\r\n&amp;amp; Save Environment as well as earn 💰..&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 149, 'uploads/products/24.png?v=1662648954', 1, 0, '2022-09-08 14:55:54', '2022-09-08 14:55:54'),
(25, 8, 7, 27, 'Jars', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Glass Jars are a\r\nhuge staple in any green home.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;They can be food\r\njars, sauce jars, wine bottles, jam jars, etc.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;They are usually\r\nthrown out after use.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Don\'t throw them!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Sell them to us\r\n&amp;amp; make money out of it!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 299, 'uploads/products/25.png?v=1662649010', 1, 0, '2022-09-08 14:56:49', '2022-09-08 14:56:50'),
(26, 8, 7, 27, 'Broken Mirrors', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Glass Jars are a\r\nhuge staple in any green home.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;They can be food\r\njars, sauce jars, wine bottles, jam jars, etc.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;They are usually\r\nthrown out after use.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Don\'t throw them!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Sell them to us\r\n&amp;amp; make money out of it!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 99, 'uploads/products/26.png?v=1662649330', 1, 0, '2022-09-08 15:02:10', '2022-09-08 15:02:10'),
(27, 8, 7, 28, 'Tin cans', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Tin cans like cold\r\ndrink can, vegetable oil cans or take out containers, etc. can be recycled.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;So Stop throwing\r\nout tin cans!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Sell them to us!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;We will make best\r\nout of it!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 159, 'uploads/products/27.png?v=1662649380', 1, 0, '2022-09-08 15:03:00', '2022-09-08 15:03:00'),
(28, 8, 7, 29, 'T-Shirts', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;T-shirts are\r\ngenerally made up of cotton fibres knitted together.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;So don\'t throw\r\nt-shirts which become old because they can be reused for various purposes.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;They usually don\'t\r\nfray so very little or no sewing required.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Sell them to us and\r\nget money for your old clothes also.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 129, 'uploads/products/28.png?v=1662649468', 1, 0, '2022-09-08 15:04:28', '2022-09-08 15:04:28'),
(29, 8, 7, 29, 'Worn-out Jeans', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;If your favourite\r\njeans collection has been worn-out, do not throw them.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;They can be\r\nrepurposed for various things.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Sell it to us and\r\nput them to good use!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Get a catchy amount\r\ntoo!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 119, 'uploads/products/29.png?v=1662649562', 1, 0, '2022-09-08 15:06:02', '2022-09-08 15:06:02'),
(30, 8, 7, 30, 'Broken Coffee Mugs', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;It\'s very common to\r\nget coffee mugs broken usually because of their sensitivity.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Sometimes their\r\nhandles break and we throw them thinking that they are useless.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Don\'t throw!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Give it to us and\r\nget paid considerably!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 49, 'uploads/products/30.png?v=1662649678', 1, 0, '2022-09-08 15:07:57', '2022-09-08 15:07:58'),
(31, 8, 7, 30, 'Broken China Plates', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;China side plates\r\nor saucer usually gets rough and loses it\'s shine or break.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;In that case they\r\ncan\'t be used for eating purposes.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;They are usually\r\nthrown.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Instead of doing\r\nthat, sell it to us!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;We\'ll make\r\nsomething new out of it.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 179, 'uploads/products/31.png?v=1662649770', 1, 0, '2022-09-08 15:09:30', '2022-09-08 15:09:30'),
(32, 8, 7, 25, 'waste paper cups', '&lt;p&gt;Don\'t throw them out even it is used paper cups&lt;/p&gt;&lt;p&gt;Sell those and be happy to buy the new decorable items!!&lt;/p&gt;', 49, 'uploads/products/32.png?v=1662649905', 1, 0, '2022-09-08 15:11:45', '2022-09-08 15:11:45'),
(33, 8, 7, 31, 'Broken Photo Frames', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Don\'t toss your\r\nbroken picture frames!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Sell them to us.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Help us turning\r\nthem into some beautiful home decor pieces instead!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;We can repurpose\r\nthem in many ways.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 79, 'uploads/products/33.png?v=1662650118', 1, 0, '2022-09-08 15:15:18', '2022-09-08 15:15:18'),
(34, 8, 7, 31, 'Vase', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;When you chip or\r\nbreak a favourite vase, don\'t throw it away.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Keep it\'s shattered\r\npieces around!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Make them available\r\nto us.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;We\'ll repurpose it\r\nto make best use of it\'s each and every piece.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 199, 'uploads/products/34.png?v=1662650234', 1, 0, '2022-09-08 15:17:14', '2022-09-08 15:17:14'),
(35, 8, 7, 32, 'Hair Accessories', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Various hair\r\naccessories we use on a daily basis become outdated or unuseful after a period\r\nof time.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Accessories such as\r\nhair pins can be used to join the things, rubber bands also can have various\r\nuses.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Sell us your\r\nuseless hair accessories and &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Get a catchy amount\r\nfor that!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 149, NULL, 1, 0, '2022-09-08 15:24:08', NULL),
(36, 8, 7, 32, 'Broken earings', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Due to rough use,\r\nit\'s very common to get your earrings broken.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Earrings can\'t be\r\nrepurposed easily.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;But their parts\r\nsuch as earring hooks, stones, etc. can be used for various purposes.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;So don\'t throw\r\nthem!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Sell them to us!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 199, 'uploads/products/36.png?v=1662650912', 1, 0, '2022-09-08 15:28:32', '2022-09-08 15:28:32'),
(37, 8, 7, 33, 'Waste Furniture ', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;A great\r\ncharacteristic of a wooden furniture is that the pieces, in creative hands, can\r\nbecome somewhat interchangeable.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Broken furniture\r\nparts can be repurposed in many ways.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Give it to us!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;We\'ll offer you a\r\ncatchy amount for that!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 1299, 'uploads/products/37.png?v=1662651046', 1, 0, '2022-09-08 15:30:46', '2022-09-08 15:30:46'),
(38, 8, 7, 33, 'Waste Wooden Boxes', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Do not throw your\r\nwooden fruit baskets when broken.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;They can be repurposed\r\nin various ways like making flower baskets and many more.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Sell it to us!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;We\'ll pay you a\r\nsatisfactory amount!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 1499, 'uploads/products/38.png?v=1662651227', 1, 0, '2022-09-08 15:33:47', '2022-09-08 15:33:47'),
(39, 8, 7, 34, 'Foam trays-', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Foam trays are very\r\ncommon in our house.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Usually, When we\r\nbuy food items, we get them foam packed.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;We throw foam trays\r\nafter taking the stuff but they can be reused.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Collect and sell\r\nthem to us!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;We\'ll put them to\r\nbest use!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 99, 'uploads/products/39.png?v=1662651329', 1, 0, '2022-09-08 15:35:28', '2022-09-08 15:35:29'),
(40, 8, 7, 34, 'Rubber Tubes and Tyers', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;If you own a car or\r\nbicycle, chances are you may have some used tubes and tyres.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Old tyres can be\r\nused to make durable, easy to make pet houses.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;The things that\r\ncould be done using tyres can be endless.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;We can make amazing\r\nthings from those tires and tubes.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;span lang=&quot;EN&quot; style=&quot;font-size:11.0pt;line-height:115%;font-family:&amp;quot;Arial&amp;quot;,sans-serif;\r\nmso-fareast-font-family:Arial;mso-ansi-language:EN;mso-fareast-language:EN-IN;\r\nmso-bidi-language:HI&quot;&gt;Sell them to us and get catchy amounts!&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 799, 'uploads/products/40.png?v=1662651419', 1, 0, '2022-09-08 15:36:59', '2022-09-08 15:36:59'),
(41, 8, 7, 34, 'Waste or Empty Pens', '&lt;p&gt;As a pen have power to change one\'s life &lt;/p&gt;&lt;p&gt;You should also give a new life to the waste and empty pens&lt;/p&gt;&lt;p&gt;Sell to Us for changing its look too!!&lt;/p&gt;', 79, 'uploads/products/41.png?v=1662651689', 1, 0, '2022-09-08 15:41:29', '2022-09-08 15:41:29'),
(42, 7, 6, 15, 'Tops', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;This top will help\r\nto raise your style coefficient.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Huge upcycled\r\ncollection of women\'s tops at low prices.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;It\'s made using a\r\nwomen\'s old t-shirt.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;This will give you\r\na classy look!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 299, 'uploads/products/42.png?v=1662652633', 1, 0, '2022-09-08 15:57:13', '2022-09-08 15:57:13'),
(43, 7, 6, 15, 'Embroided Jeans', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;You must be loving\r\ndenim and that too a cute embroidered jeans more than anything.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Buy this, it\'ll\r\ngive you a classy and elegant look.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;It\'s especiality is\r\nthat it is hand embroidered and upcycled.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 449, 'uploads/products/43.png?v=1662652875', 1, 0, '2022-09-08 16:01:15', '2022-09-08 16:01:15'),
(44, 7, 6, 15, 'latest Tops', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;This top will help\r\nto raise your style coefficient.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Huge upcycled\r\ncollection of women\'s tops at low prices.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;It\'s made using a\r\nwomen\'s old t-shirt.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;This will give you\r\na classy look!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 599, 'uploads/products/44.png?v=1662652957', 1, 0, '2022-09-08 16:02:37', '2022-09-08 16:02:37'),
(45, 7, 6, 17, 'Sleeping Socks Bunny', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;This toy, sleeping\r\nsock bunny is a handmade toy.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;It is made using\r\nold socks.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;If your children\r\nlove soft toys he/she will definitely love it!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 99, 'uploads/products/45.png?v=1662653052', 1, 0, '2022-09-08 16:04:11', '2022-09-08 16:04:12'),
(46, 7, 6, 17, 'Cardboard spacecraft', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;We have used\r\nrecycled househd items such as old CDs, egg cartons, etc. And Cardboard boxes\r\nto create this amazing cardboard spaceship.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;If you have\r\nspacecraft loving kiddos, then you are at right place.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 399, 'uploads/products/46.png?v=1662653133', 1, 0, '2022-09-08 16:05:33', '2022-09-08 16:05:33'),
(47, 7, 6, 10, 'Peacock Wall Hanging', '&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Searching for ideal peacock wall hanging in\r\nlow price?&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Then you are at\r\nright place.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;It\'s a multicolour\r\nhandmade peacock wall hanging made up of cardboard.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Buy this and get\r\none of our best deals at low price.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 299, 'uploads/products/47.png?v=1662653427', 1, 0, '2022-09-08 16:10:27', '2022-09-08 16:10:27'),
(48, 7, 6, 18, 'Butterfly wall stickers ', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Butterflies on\r\nwalls make for beautiful instant decor for any room in your house.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Brighten up your\r\nhome with this lovely butterfly wall sticker made from upcycled and waste\r\nhousehold products.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Buy it now!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 149, 'uploads/products/48.png?v=1662654776', 1, 0, '2022-09-08 16:32:55', '2022-09-08 16:32:56'),
(49, 7, 6, 16, 'Earings', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Earrings add to\r\nyour beauty giving you an attractive and confident look.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Choosing right type\r\nof earrings is of the same importance.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;This gorgeous pair\r\nof earring can add something more to your beauty.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Buy them now!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 299, 'uploads/products/49.png?v=1662659399', 1, 0, '2022-09-08 17:49:58', '2022-09-08 17:49:59'),
(50, 7, 6, 18, 'Cushion cover', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;This cushion cover\r\nis one of the best item in our home furnishing collection.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;This is handmade\r\ncushion cover made up of old clothes by sewing and giving them an attractive\r\nlook.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Buy it now!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 199, 'uploads/products/50.png?v=1662682411', 1, 0, '2022-09-09 00:13:31', '2022-09-09 00:13:31'),
(51, 7, 6, 16, 'Bracelet', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Then you are at\r\nright place!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;This bracelet is\r\nmade up of plastic pop bottle.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;It will definitely\r\nadd to your beauty and looks.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Buy it now!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 199, 'uploads/products/51.png?v=1662682440', 1, 0, '2022-09-09 00:14:00', '2022-09-09 00:14:00'),
(52, 7, 6, 18, 'Pillow Cover', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;This pillow cover\r\nis best among the home furnishing items.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;This is low cost,\r\ncomfortable and easy to maintain.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;It\'s made up of old\r\nClothing and has been given a trendy and classy look.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Buy it now and\r\ndecorate your home!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 199, 'uploads/products/52.png?v=1662682530', 1, 0, '2022-09-09 00:15:30', '2022-09-09 00:15:30'),
(53, 7, 6, 19, 'Rugs', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Rugs are firstly\r\ntaken into consideration when it comes to flooring.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;This is highly\r\nresistant to mold and staining and will go great in your house.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;It is made using\r\nold clothes.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Buy this\r\nrefurbished,easy to handle and value for money rug and give your home a great\r\nlook.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 129, 'uploads/products/53.png?v=1662682592', 1, 0, '2022-09-09 00:16:32', '2022-09-09 00:16:32'),
(54, 7, 6, 19, 'Duries', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;This is a thick,\r\nhand-woven flat weave durrie used as a floor covering.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;This is made up of\r\nold and worn -out clothes.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;These have been\r\ngiven an elegant look and are easy to carry and maintain.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Buy them to use it\r\nin your home.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 499, 'uploads/products/54.png?v=1662682654', 1, 0, '2022-09-09 00:17:34', '2022-09-09 00:17:34'),
(55, 7, 6, 20, 'Planters', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;This is an upcycled\r\nglass jar&amp;nbsp; turned into flower pot.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;It will give an\r\nattractive touch to your garden and also is budget friendly.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Buy it now and give\r\nyour garden a green touch.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:36.0pt&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 299, 'uploads/products/55.png?v=1662682723', 1, 0, '2022-09-09 00:18:43', '2022-09-09 00:18:43'),
(56, 7, 6, 20, 'Garden Ornaments', '&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;This garden ornament, Pop bottle flower is\r\nmade up of pop bottle bottom lobs by painting them and giving attractive look.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;This is easy to carry and attractive ornament\r\nwill definitely will sum up to the beauty of your garden.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Buy it now!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 399, 'uploads/products/56.png?v=1662682828', 1, 0, '2022-09-09 00:20:28', '2022-09-09 00:20:28'),
(57, 7, 6, 21, 'Vase', '&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Flower vase gives an attractive look to your\r\nhouse, almost a natural look.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;This vase is made up of used glass ketchup jar\r\nby decorating it and giving an attractive look.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Buy it now to decorate your house with\r\nflowers.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 799, 'uploads/products/57.png?v=1662682931', 1, 0, '2022-09-09 00:22:11', '2022-09-09 00:22:11'),
(58, 7, 6, 21, 'Wooden Showpiece', '&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;This is made up of using broken furniture wood\r\nthat was upcycled and broken into small pieces or just using ice cream sticks\r\nand some colourful stones and pearls.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;It\'s an attractive one and will give your\r\nhouse an attractive look.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;This is low price and homemade showpiece.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Buy it now!!&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 899, 'uploads/products/58.png?v=1662683019', 1, 0, '2022-09-09 00:23:39', '2022-09-09 00:23:39'),
(59, 7, 6, 22, 'Pendant Lights', '&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Double your lightening pleasure with this\r\npendant light.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Something as common and simple as a&amp;nbsp; glass jar can be turned into beautiful\r\npendant lamp.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n&lt;span lang=&quot;EN&quot; style=&quot;font-size:11.0pt;line-height:115%;font-family:&amp;quot;Arial&amp;quot;,sans-serif;\r\nmso-fareast-font-family:Arial;mso-ansi-language:EN;mso-fareast-language:EN-IN;\r\nmso-bidi-language:HI&quot;&gt;Buy this pendant light to brighten up your house at much\r\naffordable rates&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1299, 'uploads/products/59.png?v=1662683100', 1, 0, '2022-09-09 00:24:59', '2022-09-09 00:25:00'),
(60, 7, 6, 22, 'Candle Holders', '&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Double your lightening pleasure with this\r\npendant light.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN&quot;&gt;Something as common and simple as a&amp;nbsp; glass jar can be turned into beautiful\r\npendant lamp.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n&lt;span lang=&quot;EN&quot; style=&quot;font-size:11.0pt;line-height:115%;font-family:&amp;quot;Arial&amp;quot;,sans-serif;\r\nmso-fareast-font-family:Arial;mso-ansi-language:EN;mso-fareast-language:EN-IN;\r\nmso-bidi-language:HI&quot;&gt;Buy this pendant light to brighten up your house at much\r\naffordable rates&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 499, 'uploads/products/60.png?v=1662683158', 1, 0, '2022-09-09 00:25:58', '2022-09-09 00:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `shop_type_list`
--

CREATE TABLE `shop_type_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_type_list`
--

INSERT INTO `shop_type_list` (`id`, `name`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(6, 'Treasure', 1, 0, '2022-06-24 16:49:37', NULL),
(7, 'Trash', 1, 0, '2022-06-24 16:49:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Creative ScrapYard'),
(6, 'short_name', 'Creative ScrapYard'),
(11, 'logo', 'uploads/logo-1656246087.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1644367404.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Aman ', 'Maddeshiya', 'Ammy', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'uploads/avatar-1.png?v=1654342400', NULL, 1, '2021-01-20 14:02:37', '2022-06-04 17:03:20');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_list`
--

CREATE TABLE `vendor_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `shop_type_id` int(30) NOT NULL,
  `shop_name` text NOT NULL,
  `shop_owner` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_list`
--

INSERT INTO `vendor_list` (`id`, `code`, `shop_type_id`, `shop_name`, `shop_owner`, `contact`, `email`, `username`, `password`, `avatar`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(7, '202206-00001', 6, 'Trasure Hunters', 'Treasy', '1234567890', 'treasy@gmail.com', 'Treasy', '0b20546dacdd38278803b379c7dce0a4', 'uploads/vendors/7.png?v=1656070055', 1, 0, '2022-06-24 16:57:35', '2022-06-24 16:57:35'),
(8, '202206-00002', 7, 'Trash Hunters', 'Trashy', '1234567890', 'trashy@gmail.com', 'Trashy', '9269a41b0dc9009c19400d2412247398', 'uploads/vendors/8.png?v=1656070296', 1, 0, '2022-06-24 17:01:35', '2022-06-24 17:01:36'),
(9, '202207-00001', 7, 'asdfgh', 'asdfgh', '1234567890', 'websiteserver99@gmail.com', 'am4800960@gmail.com', '4f1b72ceb5d0c46bc91b9ebcbc584208', 'uploads/vendors/9.png?v=1658216726', 1, 1, '2022-07-19 13:15:26', '2022-09-07 17:08:19'),
(10, '202207-00002', 7, 'asdfgh', 'asdfgh', '1234567890', 'qwerty@gmail.com', 'qwerty@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'uploads/vendors/10.png?v=1658216882', 1, 1, '2022-07-19 13:18:02', '2022-09-07 17:08:23'),
(11, '202209-00001', 7, 'Qwew', 'Aman', '7860526207', 'am4800960@gmail.com', 'Ammy', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'uploads/vendors/11.png?v=1662570341', 1, 1, '2022-09-07 17:05:40', '2022-09-07 17:08:10'),
(12, '202209-00002', 7, 'Trendy', 'Rohit', '1222456981', 'nkp89760@gmail.com', 'Fashion', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'uploads/vendors/12.png?v=1662713447', 1, 0, '2022-09-09 08:50:47', '2022-09-09 08:50:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_id` (`vendor_id`),
  ADD KEY `category_id` (`category_id`) USING BTREE;

--
-- Indexes for table `shop_type_list`
--
ALTER TABLE `shop_type_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_list`
--
ALTER TABLE `vendor_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_type_id` (`shop_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `shop_type_list`
--
ALTER TABLE `shop_type_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vendor_list`
--
ALTER TABLE `vendor_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD CONSTRAINT `cart_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_list_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_list`
--
ALTER TABLE `category_list`
  ADD CONSTRAINT `category_list_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_list_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `product_list_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_list` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_list_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vendor_list`
--
ALTER TABLE `vendor_list`
  ADD CONSTRAINT `vendor_list_ibfk_1` FOREIGN KEY (`shop_type_id`) REFERENCES `shop_type_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
