-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 07, 2023 at 01:02 PM
-- Server version: 8.0.32-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `samdefic_sam`
--

-- --------------------------------------------------------

--
-- Table structure for table `ce_discount_system`
--

CREATE TABLE `ce_discount_system` (
  `id` int NOT NULL,
  `discount_level` int DEFAULT NULL,
  `from_value` varchar(255) DEFAULT NULL,
  `to_value` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `discount_percentage` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ce_faq`
--

CREATE TABLE `ce_faq` (
  `id` int NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` text,
  `created` int DEFAULT NULL,
  `updated` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ce_gateways`
--

CREATE TABLE `ce_gateways` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `min_amount` varchar(255) DEFAULT NULL,
  `max_amount` varchar(255) DEFAULT NULL,
  `reserve` varchar(255) DEFAULT NULL,
  `include_fee` int DEFAULT NULL,
  `extra_fee` varchar(255) DEFAULT NULL,
  `fee` int DEFAULT NULL,
  `allow_send` int DEFAULT NULL,
  `require_login` int DEFAULT NULL,
  `require_email_verify` int DEFAULT NULL,
  `require_mobile_verify` int DEFAULT NULL,
  `require_document_verify` int DEFAULT NULL,
  `allow_attachments` int DEFAULT NULL,
  `max_attachments` int DEFAULT NULL,
  `require_attachments` int DEFAULT NULL,
  `g_field_1` varchar(255) DEFAULT NULL,
  `g_field_2` varchar(255) DEFAULT NULL,
  `g_field_3` varchar(255) DEFAULT NULL,
  `g_field_4` varchar(255) DEFAULT NULL,
  `g_field_5` varchar(255) DEFAULT NULL,
  `g_field_6` varchar(255) DEFAULT NULL,
  `g_field_7` varchar(255) DEFAULT NULL,
  `g_field_8` varchar(255) DEFAULT NULL,
  `g_field_9` varchar(255) DEFAULT NULL,
  `g_field_10` varchar(255) DEFAULT NULL,
  `manual_payment` int DEFAULT NULL,
  `external_gateway` int DEFAULT NULL,
  `external_icon` varchar(255) DEFAULT NULL,
  `is_crypto` int DEFAULT '0',
  `merchant_source` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ce_gateways`
--

INSERT INTO `ce_gateways` (`id`, `name`, `currency`, `min_amount`, `max_amount`, `reserve`, `include_fee`, `extra_fee`, `fee`, `allow_send`, `require_login`, `require_email_verify`, `require_mobile_verify`, `require_document_verify`, `allow_attachments`, `max_attachments`, `require_attachments`, `g_field_1`, `g_field_2`, `g_field_3`, `g_field_4`, `g_field_5`, `g_field_6`, `g_field_7`, `g_field_8`, `g_field_9`, `g_field_10`, `manual_payment`, `external_gateway`, `external_icon`, `is_crypto`, `merchant_source`) VALUES
(1, 'Bitcoin', 'BTC', '0.001', '10', '9.9967', 0, '0', 0, 1, 1, 1, 0, 1, 0, 0, 0, '***************', '', '', '', '', '', '', '', '', '', 1, 1, 'uploads/1689285691_icon.png', 1, ''),
(2, 'Tether', 'USDT', '10', '100000', '99880.36130885', 0, '0', 0, 1, 1, 1, 0, 1, 0, 0, 0, '***************', '', '', '', '', '', '', '', '', '', 1, 1, 'uploads/1689285722_icon.png', 1, ''),
(3, 'USD Coin', 'USDC', '10', '100000', '99880.36130885', 0, '0', 0, 1, 1, 1, 0, 1, 0, 0, 0, '***************', '', '', '', '', '', '', '', '', '', 1, 1, 'uploads/1689285749_icon.png', 1, ''),
(4, 'Ethereum', 'ETH', '0.001', '100', '10000', 0, '0', 0, 1, 1, 1, 0, 1, 0, 0, 0, '***************', '', '', '', '', '', '', '', '', '', 1, 1, 'uploads/1689285775_icon.png', 1, ''),
(5, 'Binance Coin', 'BNB', '0.01', '10000', '10000000', 0, '0', 0, 1, 1, 1, 0, 1, 0, 0, 0, '***************', '', '', '', '', '', '', '', '', '', 1, 1, 'uploads/1689285797_icon.png', 1, ''),
(6, 'Litecoin', 'LTC', '0.1', '100000', '100000000', 0, '0', 0, 1, 1, 1, 0, 1, 0, 0, 0, '***************', '', '', '', '', '', '', '', '', '', 1, 1, 'uploads/1689285820_icon.png', 1, ''),
(7, 'Cardano', 'ADA', '10', '1000000', '1000000000', 0, '0', 0, 1, 1, 1, 0, 1, 0, 0, 0, '***************', '', '', '', '', '', '', '', '', '', 1, 1, 'uploads/1689285866_icon.png', 1, ''),
(8, 'Polygon', 'MATIC', '10', '1000000', '1000000000', 0, '0', 0, 1, 1, 1, 0, 1, 0, 0, 0, '***************', '', '', '', '', '', '', '', '', '', 1, 1, 'uploads/1689285915_icon.png', 1, ''),
(9, 'Bitcoin Cash', 'BCH', '0.01', '10000', '100000', 0, '0', 0, 1, 1, 1, 0, 1, 0, 0, 0, '***************', '', '', '', '', '', '', '', '', '', 1, 1, 'uploads/1689285941_icon.png', 1, ''),
(10, 'Avalanche', 'AVAX', '5', '50000', '5000000', 0, '0', 0, 1, 1, 1, 0, 1, 0, 0, 0, '***************', '', '', '', '', '', '', '', '', '', 1, 1, 'uploads/1689285974_icon.png', 1, ''),
(11, 'Monero', 'XMR', '0.01', '1000', '50000', 0, '0', 0, 1, 1, 1, 0, 1, 0, 0, 0, '***************', '', '', '', '', '', '', '', '', '', 1, 1, 'uploads/1689286010_icon.png', 1, ''),
(12, 'Solana', 'SOL', '0.1', '10000', '100000', 0, '0', 0, 1, 1, 1, 0, 1, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 1, 1, 'uploads/1690058421_icon.png', 1, ''),
(13, 'Dogecoin', 'DOGE', '10', '1000000', '100000000', 0, '0', 0, 1, 1, 1, 0, 1, 0, 0, 0, '***************', '', '', '', '', '', '', '', '', '', 1, 1, 'uploads/1690058720_icon.png', 1, ''),
(14, 'Ripple', 'XRP', '5', '500000', '5000000', 0, '0', 0, 1, 1, 1, 0, 1, 0, 0, 0, '***************', '', '', '', '', '', '', '', '', '', 1, 1, 'uploads/1690058758_icon.png', 1, ''),
(15, 'Polkadot', 'DOT', '2', '200000', '2000000', 0, '0', 0, 1, 1, 1, 0, 1, 0, 0, 0, '***************', '', '', '', '', '', '', '', '', '', 1, 1, 'uploads/1690058820_icon.png', 1, ''),
(17, 'Scotiabank', 'CLP', '10000', '2000000', '10000000', 0, '0', 0, 1, 1, 1, 0, 1, 1, 1, 1, 'Corriente', 'SamDeFi SpA', '77.650.166-2', '986686304', 'transferencias.pay@samdefi.cl', '', '', '', '', '', 1, 1, 'uploads/1690755569_icon.png', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `ce_gateways_directions`
--

CREATE TABLE `ce_gateways_directions` (
  `id` int NOT NULL,
  `gateway_id` int DEFAULT NULL,
  `directions` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ce_gateways_directions`
--

INSERT INTO `ce_gateways_directions` (`id`, `gateway_id`, `directions`) VALUES
(1, 1, '2,3,4,5,6,7,8,9,10,11,12,13,14,15,17'),
(2, 2, '1,3,4,5,6,7,8,9,10,11,12,13,14,15,17'),
(3, 3, '1,2,4,5,6,7,8,9,10,11,12,13,14,15,17'),
(4, 4, '1,2,3,5,6,7,8,9,10,11,12,13,14,15,17'),
(5, 5, '1,2,3,4,6,7,8,9,10,11,12,13,14,15,17'),
(6, 6, '1,2,3,4,5,7,8,9,10,11,12,13,14,15,17'),
(7, 7, '1,2,3,4,5,6,8,9,10,11,12,13,14,15,17'),
(8, 8, '1,2,3,4,5,6,7,9,10,11,12,13,14,15,17'),
(9, 9, '1,2,3,4,5,6,7,8,10,11,12,13,14,15,17'),
(10, 10, '1,2,3,4,5,6,7,8,9,11,12,13,14,15,17'),
(11, 11, '1,2,3,4,5,6,7,8,9,10,12,13,14,15,17'),
(12, 12, '1,2,3,4,5,6,7,8,9,10,11,13,14,15,17'),
(13, 13, '1,2,3,4,5,6,7,8,9,10,11,12,14,15,17'),
(14, 14, '1,2,3,4,5,6,7,8,9,10,11,12,13,15,17'),
(15, 15, '1,2,3,4,5,6,7,8,9,10,11,12,13,14,17'),
(16, 16, '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16'),
(17, 17, '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15');

-- --------------------------------------------------------

--
-- Table structure for table `ce_gateways_fields`
--

CREATE TABLE `ce_gateways_fields` (
  `id` int NOT NULL,
  `gateway_id` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `field_number` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ce_gateways_fields`
--

INSERT INTO `ce_gateways_fields` (`id`, `gateway_id`, `type`, `field_name`, `field_number`) VALUES
(1, 1, 0, 'Wallet Address', 1),
(2, 2, 0, 'Wallet Address', 1),
(3, 3, 0, 'Wallet Address', 1),
(4, 4, 0, 'Wallet Address', 1),
(5, 5, 0, 'Wallet Address', 1),
(6, 6, 0, 'Wallet Address', 1),
(7, 7, 0, 'Wallet Address', 1),
(8, 8, 0, 'Wallet Address', 1),
(9, 9, 0, 'Wallet Address', 1),
(10, 10, 0, 'Wallet Address', 1),
(11, 11, 0, 'Wallet Address', 1),
(12, 12, 0, 'Wallet Address', 1),
(13, 13, 0, 'Wallet Address', 1),
(14, 14, 0, 'Wallet Address', 1),
(15, 15, 0, 'Wallet Address', 1),
(16, 17, 0, 'Account Type', 1),
(17, 17, 0, 'Name', 2),
(18, 17, 0, 'Rut', 3),
(19, 17, 0, 'Account Number', 4),
(20, 17, 0, 'Email', 5);

-- --------------------------------------------------------

--
-- Table structure for table `ce_gateways_rules`
--

CREATE TABLE `ce_gateways_rules` (
  `id` int NOT NULL,
  `gateway_from` int DEFAULT NULL,
  `gateway_to` int DEFAULT NULL,
  `exchange_rules` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ce_invest_active`
--

CREATE TABLE `ce_invest_active` (
  `id` int NOT NULL,
  `uid` int DEFAULT NULL,
  `package_id` int DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `daily_profit` varchar(255) DEFAULT NULL,
  `total_profit` varchar(255) DEFAULT NULL,
  `total_return` varchar(255) DEFAULT NULL,
  `total_return_with_profit` varchar(255) DEFAULT NULL,
  `investment_days` varchar(255) DEFAULT NULL,
  `confirmations` int DEFAULT NULL,
  `days_left` int DEFAULT NULL,
  `created` int DEFAULT NULL,
  `updated` int DEFAULT NULL,
  `expired` int DEFAULT NULL,
  `have_insurance` int DEFAULT NULL,
  `insurance_start` int DEFAULT NULL,
  `insurance_expire` int DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ce_invest_balances`
--

CREATE TABLE `ce_invest_balances` (
  `id` int NOT NULL,
  `uid` int DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(11) DEFAULT NULL,
  `created` int DEFAULT NULL,
  `updated` int DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ce_invest_deposits`
--

CREATE TABLE `ce_invest_deposits` (
  `id` int NOT NULL,
  `uid` int DEFAULT NULL,
  `package_id` int DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `tx_id` varchar(255) DEFAULT NULL,
  `cp_txid` varchar(255) DEFAULT NULL,
  `qrcode` varchar(255) DEFAULT NULL,
  `confirms_need` int DEFAULT NULL,
  `pay_address` varchar(255) DEFAULT NULL,
  `paid` int DEFAULT NULL,
  `confirmations` int DEFAULT NULL,
  `created` int DEFAULT NULL,
  `updated` int DEFAULT NULL,
  `expired` int DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ce_invest_earnings`
--

CREATE TABLE `ce_invest_earnings` (
  `id` int NOT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(11) DEFAULT NULL,
  `created` int DEFAULT NULL,
  `updated` int DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ce_invest_plans`
--

CREATE TABLE `ce_invest_plans` (
  `id` int NOT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `min_deposit_amount` varchar(255) DEFAULT NULL,
  `min_withdrawal_amount` varchar(255) DEFAULT NULL,
  `daily_profit` varchar(255) DEFAULT NULL,
  `investment_days` varchar(255) DEFAULT NULL,
  `confirmations` varchar(255) DEFAULT NULL,
  `cp_merchant` varchar(255) DEFAULT NULL,
  `cp_secret` varchar(255) DEFAULT NULL,
  `cp_public_key` varchar(255) DEFAULT NULL,
  `cp_private_key` varchar(255) DEFAULT NULL,
  `update_dp_onchange` int DEFAULT NULL,
  `update_id_onchange` int DEFAULT NULL,
  `created` int DEFAULT NULL,
  `updated` int DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ce_invest_withdrawals`
--

CREATE TABLE `ce_invest_withdrawals` (
  `id` int NOT NULL,
  `uid` int DEFAULT NULL,
  `withdrawal_id` varchar(255) DEFAULT NULL,
  `earnings_id` int DEFAULT NULL,
  `deposit_id` int DEFAULT NULL,
  `gateway_id` int DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `tx_id` varchar(255) DEFAULT NULL,
  `wallet` varchar(255) DEFAULT NULL,
  `created` int DEFAULT NULL,
  `updated` int DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ce_news`
--

CREATE TABLE `ce_news` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `created` int DEFAULT NULL,
  `updated` int DEFAULT NULL,
  `views` int DEFAULT NULL,
  `author` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ce_operators`
--

CREATE TABLE `ce_operators` (
  `id` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `can_login` int DEFAULT NULL,
  `can_manage_gateways` int DEFAULT NULL,
  `can_manage_directions` int DEFAULT NULL,
  `can_manage_rates` int DEFAULT NULL,
  `can_manage_rules` int DEFAULT NULL,
  `can_manage_orders` int DEFAULT NULL,
  `can_manage_users` int DEFAULT NULL,
  `can_manage_reviews` int DEFAULT NULL,
  `can_manage_withdrawals` int DEFAULT NULL,
  `can_manage_support_tickets` int DEFAULT NULL,
  `can_manage_news` int DEFAULT NULL,
  `can_manage_pages` int DEFAULT NULL,
  `can_manage_faq` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ce_operators_activity`
--

CREATE TABLE `ce_operators_activity` (
  `id` int NOT NULL,
  `oid` int DEFAULT NULL,
  `activity_type` varchar(255) DEFAULT NULL,
  `activity_id` varchar(255) DEFAULT NULL,
  `activity_value` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `created` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ce_orders`
--

CREATE TABLE `ce_orders` (
  `id` int NOT NULL,
  `uid` int DEFAULT NULL,
  `gateway_send` int DEFAULT NULL,
  `gateway_receive` int DEFAULT NULL,
  `amount_send` varchar(255) DEFAULT NULL,
  `amount_receive` varchar(255) DEFAULT NULL,
  `rate_from` varchar(255) DEFAULT NULL,
  `rate_to` varchar(255) DEFAULT NULL,
  `currency_from` varchar(255) DEFAULT NULL,
  `currency_to` varchar(255) DEFAULT NULL,
  `u_field_1` varchar(255) DEFAULT NULL,
  `u_field_2` varchar(255) DEFAULT NULL,
  `u_field_3` varchar(255) DEFAULT NULL,
  `u_field_4` varchar(255) DEFAULT NULL,
  `u_field_5` varchar(255) DEFAULT NULL,
  `u_field_6` varchar(255) DEFAULT NULL,
  `u_field_7` varchar(255) DEFAULT NULL,
  `u_field_8` varchar(255) DEFAULT NULL,
  `u_field_9` varchar(255) DEFAULT NULL,
  `u_field_10` varchar(255) DEFAULT NULL,
  `transaction_send` varchar(255) DEFAULT NULL,
  `transaction_receive` varchar(255) DEFAULT NULL,
  `order_hash` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created` int DEFAULT NULL,
  `updated` int DEFAULT NULL,
  `expired` int DEFAULT NULL,
  `refereer` int DEFAULT NULL,
  `refereer_comission` varchar(255) DEFAULT NULL,
  `refereer_comission_currency` varchar(255) DEFAULT NULL,
  `refereer_set` int DEFAULT NULL,
  `processed_by` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ce_orders`
--

INSERT INTO `ce_orders` (`id`, `uid`, `gateway_send`, `gateway_receive`, `amount_send`, `amount_receive`, `rate_from`, `rate_to`, `currency_from`, `currency_to`, `u_field_1`, `u_field_2`, `u_field_3`, `u_field_4`, `u_field_5`, `u_field_6`, `u_field_7`, `u_field_8`, `u_field_9`, `u_field_10`, `transaction_send`, `transaction_receive`, `order_hash`, `ip`, `status`, `created`, `updated`, `expired`, `refereer`, `refereer_comission`, `refereer_comission_currency`, `refereer_set`, `processed_by`) VALUES
(1000000, 2, 2, 1, '100', '0.00330000', '1', '0.000033', 'USDT', 'BTC', 'samu0689@gmail.com', '0xdfccc59f0da24f5b9a5aebf99045b46bdf3177d3', '', '', '', '', '', '', '', '', '12345', '', '1fb63e2d2adab21558c2458c3b124f62', '181.42.44.12', 4, 1690663032, 1690840947, 0, 0, '0', '', 0, 1),
(1000001, 2, 17, 2, '100000.00', '119.63869115', '835.85', '1', 'CLP', 'USDT', 'Samu0689@gmail.com', '0xdfccc59f0da24f5b9a5aebf99045b46bdf3177d3', '', '', '', '', '', '', '', '', '456789', '', '3b883ee09521dd2d063eba6539586d22', '186.189.92.181', 4, 1690757551, 1690840890, 0, 0, '0', '', 0, 1),
(1000002, 2, 17, 3, '100000', '119.63869115', '835.85', '1', 'CLP', 'USDC', 'Samu0689@gmail.com', '0xdfccc59f0da24f5b9a5aebf99045b46bdf3177d3', '', '', '', '', '', '', '', '', 'lkr8h0sq-7968561', 'lkr8h0sq-7968561', '1b8b336fc3de7c515341b2ff71bf8b35', '186.189.90.181', 4, 1690842963, 1690843161, 0, 0, '0', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ce_orders_attachments`
--

CREATE TABLE `ce_orders_attachments` (
  `id` int NOT NULL,
  `oid` int DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filesize` varchar(255) DEFAULT NULL,
  `filepath` text,
  `uploaded` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ce_orders_attachments`
--

INSERT INTO `ce_orders_attachments` (`id`, `oid`, `filename`, `filesize`, `filepath`, `uploaded`) VALUES
(1, 1000002, 'Screenshot_20230731_180230_Chrome.jpg', '289050', '6b0daf95cb/877466ffd2/1690843065_file.jpg', 1690843065);

-- --------------------------------------------------------

--
-- Table structure for table `ce_orders_values`
--

CREATE TABLE `ce_orders_values` (
  `id` int NOT NULL,
  `oid` int DEFAULT NULL,
  `field_id` varchar(255) DEFAULT NULL,
  `field_value` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ce_pages`
--

CREATE TABLE `ce_pages` (
  `id` int NOT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `created` int DEFAULT NULL,
  `updated` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ce_pages`
--

INSERT INTO `ce_pages` (`id`, `prefix`, `title`, `content`, `created`, `updated`) VALUES
(1, 'about-us', 'About Us', '<p><span style=\"color: #000000;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">En SamDeFi, nos enorgullecemos de ser su plataforma de confianza para el comercio de activos digitales. </span></span></span><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Con una s&oacute;lida experiencia como Trader p2p en Binance, OKX, Airtm y Bybit con m&aacute;s de 21.000 completadas y 6.200 comentarios positivos.</span></span></span></span></span></p>\r\n<p><span style=\"color: #000000;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Hemos decidido dar un paso m&aacute;s y lanzar nuestro propio sitio web, brind&aacute;ndole una experiencia completa y accesible en el apasionante mundo de los activos digitales.</span></span></span></span></span></p>\r\n<p><strong><span style=\"color: #000000;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Nuestra misi&oacute;n</span></span></span></span></span></strong></p>\r\n<p><span style=\"color: #000000;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Es empoderar y ayudar a nuestros clientes a tomar el control de su futuro financiero. </span></span></span><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Creemos firmemente en el potencial transformador de los activos digitales y trabajamos muy duro para que las oportunidades financieras est&eacute;n disponibles para todos.</span></span></span></span></span></p>\r\n<p><span style=\"color: #000000;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Queremos fomentar la adopci&oacute;n masiva de activos digitales y contribuir al cambio hacia un sistema financiero m&aacute;s inclusivo y equitativo.</span></span></span></span></span></p>\r\n<p><span style=\"color: #000000;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">En SamDeFi, nos esforzamos por ofrecer una soluci&oacute;n de pago segura, confiable e innovadora.</span></span></span></span></span></p>\r\n<p><span style=\"color: #000000;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Nuestro compromiso con la calidad y un servicio excepcional nos impulsa a brindar herramientas avanzadas y un entorno transparente que fomenta la confianza y la independencia financiera.</span></span></span></span></span></p>\r\n<p><strong><span style=\"color: #000000;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Nuestra vision</span></span></span></span></span></strong></p>\r\n<p><span style=\"color: #000000;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Ser reconocido como l&iacute;der en el comercio de activos digitales, tanto a nivel local como global. </span></span></span><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Nos destacamos por nuestra innovaci&oacute;n, transparencia y excelencia en el servicio al cliente.</span></span></span></span></span></p>\r\n<p><span style=\"color: #000000;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Aspiramos a convertirnos en la plataforma elegida por inversores experimentados y entusiastas de las criptomonedas, ofreciendo una experiencia incomparable respaldada por un ecosistema financiero digital seguro y confiable.</span></span></span></span></span></p>\r\n<p><span style=\"color: #000000;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">&Uacute;nase a nosotros en SamDeFi y descubra un nuevo mundo de oportunidades financieras.</span></span></span></span></span></p>', 1689284261, 1690841848),
(2, 'privacy-policy', 'Privacy Policy', '<p><span style=\"color: #000000;\"><strong><u>Privacy Policy</u></strong></span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">SAMDEFI SPA (\"we,\" \"our,\" or \"the company\") is committed to protecting and respecting your privacy. Our Privacy Policy also governs your use of our Service. describes how we collect, use, and protect the personal information we obtain through our website and related services. By using our website, you agree to the terms and conditions of this policy.</span></p>\r\n<p><span style=\"color: #000000;\"><strong>&nbsp;</strong></span></p>\r\n<ol>\r\n<li><span style=\"color: #000000;\"><strong> Information We Collect</strong></span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">We collect personal information that you voluntarily provide to us when you register on our website, complete forms, engage in transactions, or interact with our services. This information may include, among other data:</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">Full name</span></li>\r\n<li><span style=\"color: #000000;\">Nationality</span></li>\r\n<li><span style=\"color: #000000;\">Gender</span></li>\r\n<li><span style=\"color: #000000;\">Profession or occupation</span></li>\r\n<li><span style=\"color: #000000;\">Country of residence</span></li>\r\n<li><span style=\"color: #000000;\">Home or business address</span></li>\r\n<li><span style=\"color: #000000;\">Email address</span></li>\r\n<li><span style=\"color: #000000;\">Phone number</span></li>\r\n<li><span style=\"color: #000000;\">Date of birth</span></li>\r\n<li><span style=\"color: #000000;\">Identification document (such as passport number or national identification number)</span></li>\r\n<li><span style=\"color: #000000;\">Financial information for transaction processing</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">Additionally, we collect information automatically through the use of technologies such as cookies and server logs. This may include, among other data:</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">IP address</span></li>\r\n<li><span style=\"color: #000000;\">Browser type</span></li>\r\n<li><span style=\"color: #000000;\">Operating system</span></li>\r\n<li><span style=\"color: #000000;\">Pages visited on our website</span></li>\r\n<li><span style=\"color: #000000;\">Visit time</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"2\">\r\n<li><span style=\"color: #000000;\"><strong> Use of Information</strong></span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">We use the collected personal information for the following purposes:</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">Process your transactions and provide you with requested services.</span></li>\r\n<li><span style=\"color: #000000;\">Communicate with you and respond to your inquiries and requests.</span></li>\r\n<li><span style=\"color: #000000;\">Verify your identity and fulfill our legal obligations.</span></li>\r\n<li><span style=\"color: #000000;\">Personalize and enhance your experience on our website, including presenting relevant content and offers to you.</span></li>\r\n<li><span style=\"color: #000000;\">Detect and prevent fraudulent or unlawful activities.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"3\">\r\n<li><span style=\"color: #000000;\"><strong> Disclosure of Information</strong></span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">We do not share your personal information with non-affiliated third parties, except under the following limited circumstances:</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">Service providers: We may share your information with third parties who provide support services to us, such as payment processing, web hosting services, and data analysis. These service providers will only access your information to the extent necessary to perform their functions and are required to maintain the confidentiality of your data.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">Legal compliance: We will disclose your personal information if we believe in good faith that it is necessary to comply with a legal obligation, protect our legal rights, or respond to a valid court order.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"4\">\r\n<li><span style=\"color: #000000;\"><strong> Security Measures</strong></span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">We implement appropriate technical and organizational measures to ensure the security of your personal information and protect it against unauthorized access, loss, or disclosure. This includes:</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">Use of secure connections (SSL/TLS) to protect the transmission of data between your browser and our website.</span></li>\r\n<li><span style=\"color: #000000;\">Restricting access to personal information only to authorized employees who need it to perform their job duties.</span></li>\r\n<li><span style=\"color: #000000;\">Use of firewalls and intrusion detection systems to protect our technological infrastructure.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"5\">\r\n<li><span style=\"color: #000000;\"><strong> International Data Transfers</strong></span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">Your personal information may be transferred and processed in countries outside the jurisdiction where we operate. We will take all reasonably necessary steps to ensure that your data is treated securely and in accordance with this Privacy Policy. By using our services, you agree to such transfer.</span></p>\r\n<p><span style=\"color: #000000;\"><strong>&nbsp;</strong></span></p>\r\n<ol start=\"6\">\r\n<li><span style=\"color: #000000;\"><strong> Your Rights</strong></span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">You have certain rights regarding your personal data. You can exercise these rights by sending us a written request using the contact details provided at the end of this policy. Your rights include:</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">Access to your personal data and receiving information about how it is used.</span></li>\r\n<li><span style=\"color: #000000;\">Correction of any inaccurate or incomplete personal data.</span></li>\r\n<li><span style=\"color: #000000;\">Deletion of your personal data, where there is no legal basis for its retention.</span></li>\r\n<li><span style=\"color: #000000;\">Restricting the processing of your personal data under certain circumstances.</span></li>\r\n<li><span style=\"color: #000000;\">Objecting to the processing of your personal data under specific circumstances.</span></li>\r\n<li><span style=\"color: #000000;\">Portability of your personal data to another service provider, where technically feasible.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"7\">\r\n<li><span style=\"color: #000000;\"><strong> Changes to Our Privacy Policy</strong></span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">We reserve the right to update or modify this Privacy Policy at any time. We will notify you of any material changes through postings on our website or through other means we consider appropriate</span></p>', 1689284337, 0),
(3, 'terms-and-conditions', 'Terms and Conditions of Use', '<p><span style=\"color: #000000;\"><strong><u>Terms and Conditions of Use</u></strong></span></p>\r\n<p><span style=\"color: #000000;\"><strong>&nbsp;</strong></span></p>\r\n<ol>\r\n<li><span style=\"color: #000000;\"><strong>ACCEPTANCE OF OUR LEGAL TERMS AND CONDITIONS </strong></span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">Welcome to SAMDEFI SPA (\"Company\", \"we\", \"us\", \"our\"), a company domiciled at Av. Providencia 1208 P. 16 OF 1603, Santiago Metropolitan Region, Chile.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">By accessing and using the website http://www.samdefi.cl (hereinafter \"Site\") and any other related product or service that refers to or links to these legal terms and conditions (hereinafter \"Terms and Conditions&rdquo;), you agree to be legally bound by these terms and conditions.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">SAMDEFI SPA offers services for the purchase and sale of digital assets through the Services.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">If you have any questions or queries about our Terms and Conditions, you can contact us by email at support@samdefi.cl or by post at Av. Providencia 1208 P. 16 OF. 1603, Santiago Metropolitan Region, Chile.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">By accessing and using our Services, you represent that you have read, understood, and agree to be bound by all the terms and conditions set forth in this legally binding agreement<u>. </u></span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\"><u>IF YOU DO NOT AGREE TO ALL OF THESE TERMS AND CONDITIONS, WE ASK YOU TO REFRAIN FROM USING THE SERVICES AND IMMEDIATELY CEASE USE.</u></span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"2\">\r\n<li><span style=\"color: #000000;\"><strong> Use of the Website</strong></span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\"><strong>2.1 Eligibility</strong></span></p>\r\n<p><span style=\"color: #000000;\">To use our website, you must be at least 18 years old and have the legal capacity to enter in to binding contracts. By accessing and using our website, you represent and warrant that you meet these requirements.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\"><strong>2.2 Account Registration</strong></span></p>\r\n<p><span style=\"color: #000000;\">You may be required to create an account to access certain services on our website. When registering, you must provide accurate and complete information, including your full name, email address, phone number, and any other requested information. You agree to keep your registration information up to date and promptly notify us of any changes or unauthorized activity in your account.</span></p>\r\n<p><span style=\"color: #000000;\"><strong>&nbsp;</strong></span></p>\r\n<p><span style=\"color: #000000;\"><strong>2.3 Permitted Use</strong></span></p>\r\n<p><span style=\"color: #000000;\">By using our website, you agree to comply with all applicable laws and regulations. You may not use our website for illegal, fraudulent, defamatory, obscene, or rights-infringing activities. Additionally, you agree not to attempt to circumvent the website\'s security measures or interfere with its normal operation.</span></p>\r\n<p><span style=\"color: #000000;\"><strong>&nbsp;</strong></span></p>\r\n<p><span style=\"color: #000000;\"><strong>2.4 Risks and Liability</strong></span></p>\r\n<p><span style=\"color: #000000;\">You acknowledge and agree that the purchase and sale of digital assets involve inherent risks. We are not responsible for any direct, indirect, consequential, or incidental loss or damage arising from the use of our website, or any transactions conducted on it. It is your responsibility to conduct proper research and make informed decisions before engaging in any activities related to digital assets.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"3\">\r\n<li><span style=\"color: #000000;\"><strong> Purchase and Sale of Digital Assets</strong></span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\"><strong>&nbsp;</strong></span></p>\r\n<p><span style=\"color: #000000;\"><strong>3.1 Financial Information</strong></span></p>\r\n<p><span style=\"color: #000000;\">To transact on our website, you must provide accurate and complete financial information, including details of your bank account or cryptocurrencies. You agree that we may verify and confirm such information before processing your transactions.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\"><strong>3.2 Legal Compliance</strong></span></p>\r\n<p><span style=\"color: #000000;\">You are required to comply with all applicable laws and regulations regarding the purchase and sale of digital assets, including Know Your Customer (KYC) and Anti-Money Laundering (AML) requirements. We reserve the right to request additional information and perform identity verification to comply with these regulations.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\"><strong>3.3 Market Risk</strong></span></p>\r\n<p><span style=\"color: #000000;\">You acknowledge and accept that the value of digital assets can be volatile and subject to significant changes in a short period of time. You assume all risks associated with the purchase and sale of digital assets and are solely responsible for your investment decisions. We do not provide any warranty that the value of digital assets will remain stable or increase.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\"><strong>3.4 Taxes and Legal Responsibility</strong></span></p>\r\n<p><span style=\"color: #000000;\">You are responsible for fulfilling your tax and legal obligations relating to transactions made through our website. We are not liable for any taxes, fees, or penalties resulting from your use of our website and services.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"4\">\r\n<li><span style=\"color: #000000;\"><strong> Intellectual Property </strong></span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\"><strong>4.1 Copyright</strong></span></p>\r\n<p><span style=\"color: #000000;\">All content and materials available on our website, including but not limited to text, graphics, logos, images, videos, software, and designs, are protected by copyright and other intellectual property laws. You may not use, copy, reproduce, or distribute such content without our prior written consent.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\"><strong>4.2 Trademarks</strong></span></p>\r\n<p><span style=\"color: #000000;\">All trademarks, logos, and trade names used on our website are the property of their respective owners, and no right to use them is granted without their express consent.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"5\">\r\n<li><span style=\"color: #000000;\"><strong> Privacy and Data Protection</strong></span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">Our Privacy Policy describes how we collect, use, and protect the personal information we obtain through our website and related services. By using our website, you agree to the processing of your personal data as set forth in our Privacy Policy.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\"><strong>5.1 Information Collection</strong></span></p>\r\n<p><span style=\"color: #000000;\">We may collect personal information, such as your name, email address, phone number, and transaction details when you register on our website or engage in transactions through it. We use this information to facilitate and improve our services.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\"><strong>5.2 Use of Cookies</strong></span></p>\r\n<p><span style=\"color: #000000;\">We may use cookies and similar technologies to collect information about your activity on our website and provide you with a personalized experience. You can adjust your browser settings to reject cookies, but this may affect the functionality of our website.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\"><strong>5.3 Data Security</strong></span></p>\r\n<p><span style=\"color: #000000;\">We implement reasonable security measures to protect your personal information against loss, misuse, and unauthorized access. However, we cannot guarantee the absolute security of data transmitted over the Internet.</span></p>\r\n<p><span style=\"color: #000000;\"><strong>5.4 Information Disclosure</strong></span></p>\r\n<p><span style=\"color: #000000;\">We may disclose your personal information to third parties in limited cases, such as law enforcement compliance, protection of our legal rights, or prevention of fraudulent activities. We do not sell or share your information with third parties for marketing purposes without your explicit consent.</span></p>\r\n<ol start=\"6\">\r\n<li><span style=\"color: #000000;\"><strong> Applicable Law and Jurisdiction</strong></span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">These Terms are governed by the laws of the Republic of Chile. Any dispute arising out of or in connection with these Terms shall be subject to the exclusive jurisdiction of the competent courts located in Chile</span></p>\r\n<p><span style=\"color: #000000;\">If you have any questions or concerns regarding these Terms and Conditions of Use, please feel free to contact us to support@samdefi.cl</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"7\">\r\n<li><span style=\"color: #000000;\"><strong> Modifications and Termination</strong></span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">We reserve the right to modify, suspend, or discontinue any aspect of our website and services at any time and without prior notice. We also reserve the right to modify these Terms at any time. We recommend that you periodically review these Terms to stay informed of any changes. If you continue to use our website after modifications have been made, it will be considered as your acceptance of those modifications.</span></p>\r\n<p><span style=\"color: #000000;\"><strong>&nbsp;</strong></span></p>\r\n<p><span style=\"color: #000000;\"><strong>8 Operating Hours </strong></span></p>\r\n<p><span style=\"color: #000000;\">Our service will be available from 9 a.m. to 9 p.m. Monday through Saturday, and Sundays from 11 a.m. to 3 p.m.</span></p>\r\n<p><span style=\"color: #000000;\">Chile\'s time zone is UTC-4 in standard time and changes to UTC-3 during daylight saving time.</span></p>\r\n<p><span style=\"color: #000000;\">These hours are subject to change without prior notice.</span></p>\r\n<p><span style=\"color: #000000;\"><strong>8.1 Access to the Service</strong></span></p>\r\n<p><span style=\"color: #000000;\">During our operating hours, you will be able to access and use our services without restrictions, if you comply with the terms and conditions set forth in this document.</span></p>\r\n<p><span style=\"color: #000000;\"><strong>8.2 User Responsibility As a user </strong></span></p>\r\n<p><span style=\"color: #000000;\">you are responsible for ensuring that you access and use our services within the designated operating hours. We are not responsible for any inconvenience caused by attempts to access outside of these hours.</span></p>\r\n<p><span style=\"color: #000000;\"><strong>8.3 Scheduled Maintenance </strong></span></p>\r\n<p><span style=\"color: #000000;\">We reserve the right to perform scheduled maintenance on our systems or temporarily interrupt access to our services during the established operating hours. To the extent possible, we will notify any planned interruption in advance.</span></p>\r\n<p><span style=\"color: #000000;\"><strong>8.4 Technical Support</strong>&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">During the operating hours, we will offer technical support to resolve issues related to our services. We encourage you to contact our support team if you experience any difficulty.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>', 1689284359, 0),
(4, 'disclaimer', 'Disclaimer', '<p><span style=\"color: #000000;\"><strong><u>Disclaimer</u></strong></span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">SamDeFi SpA (\"we\", \"our\" or \"the company\") strives to provide accurate and reliable services and information about digital assets and financial transactions. However, it is important that users fully understand the following conditions and limitations:</span></p>\r\n<p><span style=\"color: #000000;\"><strong>&nbsp;</strong></span></p>\r\n<ol>\r\n<li><span style=\"color: #000000;\"><strong> General Information</strong></span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">All information provided by us in connection with digital assets, financial transactions and other related matters is of a general nature and does not constitute specific financial, legal or investment advice. The information is provided for informational and educational purposes only. We are not responsible for any decision made by users based solely on this general information. We strongly recommend that users seek independent professional advice before making any significant financial decisions.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"2\">\r\n<li><span style=\"color: #000000;\"><strong> Associated risks</strong></span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">Digital assets and financial transactions carry inherent risks. Market volatility, price fluctuations and other factors can result in significant gains or losses. Users are responsible for understanding and accepting the associated risks before making any transaction. While we strive to provide accurate and up-to-date information, we do not guarantee the accuracy or completeness of the information provided. We are not responsible for financial losses suffered by users as a result of engaging in activities related to digital assets or financial transactions.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"3\">\r\n<li><span style=\"color: #000000;\"><strong> Responsibility of the user</strong></span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">Users are responsible for maintaining the security of their accounts and ensuring that their login information and other sensitive data is not shared with third parties. We are not responsible for any unauthorized activity performed on user accounts as a result of your negligence or carelessness in protecting your information. We strongly encourage users to use appropriate security measures, such as strong passwords and two-factor authentication, to protect their accounts.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"4\">\r\n<li><span style=\"color: #000000;\"><strong> Updates and changes</strong></span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">We reserve the right to update, modify, or change our platform, services, policies, and terms at any time without notice. We will make reasonable efforts to notify users of significant changes, but users are responsible for regularly reviewing our updated policies and terms. Your continued use of our services after making changes will constitute acceptance of those changes.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"5\">\r\n<li><span style=\"color: #000000;\"><strong> Disclaimer</strong></span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">To the maximum extent permitted by law, we exclude any liability for direct, indirect, incidental, special or consequential damages that may arise as a result of the use of our services, platform or information provided. This includes, but is not limited to, financial loss, business interruption, loss of data, or any other damage related to the use or inability to use our services.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">Please note that this disclaimer clearly states the limitations and responsibilities of both SamDeFi SpA and the users. By accessing and using our services, users accept and acknowledge these terms and conditions. We strongly encourage users to read this disclaimer carefully and consult professional advisors before making any significant financial decisions.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>', 1689284383, 0),
(5, 'cookies-policy', 'Cookies policy', '<p><span style=\"color: #000000;\"><strong><u>Cookies policy</u></strong></span></p>\r\n<p><span style=\"color: #000000;\"><strong>&nbsp;</strong></span></p>\r\n<p><span style=\"color: #000000;\"><strong>SamDeFi SpA uses cookies on its platform to provide a personalized experience and improve the operation of the site. The details of our cookie policy are set out below.</strong></span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\"><strong>Definition of cookies:</strong></span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;Cookies are small text files that are stored on the user\'s device when visiting our website. These cookies contain information that helps us recognize the user, remember your preferences and provide a more efficient experience.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\"><strong>Use of cookies: </strong></span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">We use cookies for various purposes, including, but not limited to:</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\"><strong>Authentication</strong>: We use cookies to authenticate the user\'s identity and ensure that only the authorized user accesses their account.</span></li>\r\n<li><span style=\"color: #000000;\"><strong>Personalization</strong>: We use cookies to remember user preferences and settings, such as preferred language or geographic region.</span></li>\r\n<li><span style=\"color: #000000;\"><strong>Analysis</strong>: We use cookies from Google Analytics, a website analysis service provided by Google. These cookies allow us to collect statistical data about the use of our website, such as the number of visitors, the most visited pages and the time users spend on our site. The information collected through these cookies is anonymous and is used for the purposes of analysis and improvement of our website. We do not use these cookies to personally identify our users or to serve ads based on their browsing activities.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\"><strong>We have no advertising or marketing</strong>: We want to assure our users that we do not use cookies for advertising or marketing purposes. We do not display ads or use cookies to track user activity for advertising purposes.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\"><strong>Information privacy</strong>: At SamDeFi SpA we value and respect the privacy of our users. We promise not to sell, share or disclose your personal information collected through cookies to third parties without your express consent. All information collected will be handled in accordance with our Privacy Policy.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\"><strong>Cookie management</strong>: Users can manage cookie preferences through their browser settings. You have the option of accepting all cookies, rejecting all cookies, or setting your browser to notify you when a cookie is set. However, it is important to note that disabling cookies may affect the functionality and user experience on our website.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\"><strong>User consent</strong>: By using our website, users accept the use of cookies in accordance with this policy. You can withdraw your consent at any time by adjusting the cookie settings in your browser.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\"><strong>Cookie Policy Updates</strong>: We reserve the right to update and modify our cookie policy at any time. Any significant changes will be communicated through our website. We recommend users to periodically review our cookie policy to be aware of changes and updates.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">We want to emphasize that we are committed to protecting the privacy of our users and to guaranteeing that any information collected through cookies is used in accordance with the highest standards of security and confidentiality.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>', 1689284410, 0),
(6, 'refund-policy', 'Refund Policy', '<p><span style=\"color: #000000;\"><strong><u>Refund Policy</u></strong></span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\"><strong>SamDeFi SpA is a joint-stock company incorporated in the Republic of Chile with RUT number 77650166-2 and address at office 1603 located at Av. Providencia 1208, Providencia, Santiago de Chile Metropolitan Region. We guarantee refunds under the following conditions set forth in this policy.</strong></span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol>\r\n<li><span style=\"color: #000000;\"><strong> Guarantees</strong></span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\"><strong>&nbsp;SamDeFi SpA guarantees reimbursement in the following cases</strong></span></p>\r\n<ol>\r\n<li><span style=\"color: #000000;\">a) technical errors: If technical errors occur on the platform that result in financial losses for users, refund requests may be processed. The user must provide proof and specific details about the technical error experienced.</span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">a.1) If SamDeFi SpA does not comply with the delivery of the digital assets to the wallet specified by the client in accordance with the order.</span></p>\r\n<p><span style=\"color: #000000;\">a.2) If SamDeFi SpA does not make the deposit of the amount in fiat currency in the client\'s account in accordance with the order.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"2\">\r\n<li><span style=\"color: #000000;\"><strong> Refund request</strong></span></li>\r\n</ol>\r\n<ul>\r\n<li><span style=\"color: #000000;\">The client must request the Refund Form by sending an email to support@samdefi.cl.</span></li>\r\n<li><span style=\"color: #000000;\">The client must complete the Refund Form and send it to support@samdefi.cl from the email account associated with their account on the platform.</span></li>\r\n<li><span style=\"color: #000000;\">SamDeFi SpA will process the refund form sent by the customer as soon as possible within reasonable limits. Response times may vary based on reasons claimed for refund and workload.</span></li>\r\n<li><span style=\"color: #000000;\">SamDeFi SpA will notify the client about the result of the request and the client will be able to contact the support department, available from 9:00 a.m. to 9:00 p.m. a day, 7 days a week, to obtain possible updates.</span></li>\r\n<li><span style=\"color: #000000;\">Please note that sending the Reimbursement Form does not guarantee approval of the reimbursement request.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"3\">\r\n<li><span style=\"color: #000000;\"><strong> Evaluation process:</strong></span></li>\r\n</ol>\r\n<ul>\r\n<li><span style=\"color: #000000;\">All refund requests will be reviewed by our designated support team.</span></li>\r\n<li><span style=\"color: #000000;\">The user must provide detailed information and sufficient evidence to support the refund request. This may include screenshots, relevant documents, accurate description of the problem, dates and details of the transaction, among others.</span></li>\r\n<li><span style=\"color: #000000;\">SamDeFi SpA reserves the right to request additional information from the user if necessary to properly assess the refund request.</span></li>\r\n<li><span style=\"color: #000000;\">The evaluation process can take a variable amount of time depending on the complexity of the case. We are committed to conducting a diligent and timely review.</span></li>\r\n<li><span style=\"color: #000000;\">Once a refund request has been reviewed and approved, the funds return process will begin within 72 business hours.</span></li>\r\n<li><span style=\"color: #000000;\">Refunds will be made through the same payment method used in the original transaction.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"4\">\r\n<li><span style=\"color: #000000;\"><strong> Exceptions:</strong></span></li>\r\n</ol>\r\n<ul>\r\n<li><span style=\"color: #000000;\">SamDeFi SpA reserves the right to deny a refund request if it is determined to be fraudulent or inconsistent with our policy.</span></li>\r\n<li><span style=\"color: #000000;\">No refunds will be made for losses caused by the user\'s intentional actions or gross negligence, such as sharing login information with third parties or conducting transactions without due diligence.</span></li>\r\n<li><span style=\"color: #000000;\">In exceptional situations not contemplated in this policy, the company reserves the right to evaluate and make decisions on a case-by-case basis. The final resolution will be subject to the discretion of the company.</span></li>\r\n<li><span style=\"color: #000000;\">We are not responsible for reimbursing costs associated with payment processing fees incurred by third party financial service providers. Any additional charges imposed by these</span></li>\r\n<li><span style=\"color: #000000;\">We are not responsible for reimbursing changes in the prices of digital assets due to market volatility. Users are responsible for understanding and accepting the risks associated with these types of assets before making any transactions.</span></li>\r\n</ul>\r\n<ol start=\"5\">\r\n<li><span style=\"color: #000000;\"><strong> Refunds after a successful purchase.</strong></span></li>\r\n</ol>\r\n<ul>\r\n<li><span style=\"color: #000000;\">No refunds will be offered if the customer has received the purchased digital assets in accordance with the order.</span></li>\r\n<li><span style=\"color: #000000;\">If the client changes his mind and wishes to sell the purchased digital assets, SamDeFi SpA may repurchase them at the current market exchange rate, plus SamDeFi SpA\'s service fee.In other words, the customer can sell the purchased digital assets and receive payment via bank transfer.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\"><strong>&nbsp;</strong></span></p>\r\n<ol start=\"6\">\r\n<li><span style=\"color: #000000;\"><strong> Changes to Our refund Policy</strong></span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">SamDeFi SpA reserve the right to update or modify this Policy at any time. We will notify you of any material changes through postings on our website or through other means we consider appropriate. We recommend that you periodically review these policies to be aware of any changes. If you continue to use our website after making changes, you will be deemed to have accepted&nbsp;those&nbsp;changes.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>', 1689284438, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ce_rates`
--

CREATE TABLE `ce_rates` (
  `id` int NOT NULL,
  `gateway_from` int DEFAULT NULL,
  `gateway_to` int DEFAULT NULL,
  `rate_from` varchar(255) DEFAULT NULL,
  `rate_to` varchar(255) DEFAULT NULL,
  `percentage_rate` int DEFAULT NULL,
  `fee` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ce_rates`
--

INSERT INTO `ce_rates` (`id`, `gateway_from`, `gateway_to`, `rate_from`, `rate_to`, `percentage_rate`, `fee`) VALUES
(1, 1, 2, '', '', 1, 1),
(2, 1, 3, '', '', 1, 1),
(3, 1, 4, '', '', 1, 1),
(4, 1, 5, '', '', 1, 1),
(5, 1, 6, '', '', 1, 1),
(6, 1, 7, '', '', 1, 1),
(7, 1, 8, '', '', 1, 1),
(8, 1, 9, '', '', 1, 1),
(9, 1, 10, '', '', 1, 1),
(10, 1, 11, '', '', 1, 1),
(11, 2, 1, '', '', 1, 1),
(12, 2, 3, '', '', 1, 1),
(13, 2, 4, '', '', 1, 1),
(14, 2, 5, '', '', 1, 1),
(15, 2, 6, '', '', 1, 1),
(16, 2, 7, '', '', 1, 1),
(17, 2, 8, '', '', 1, 1),
(18, 2, 9, '', '', 1, 1),
(19, 2, 10, '', '', 1, 1),
(20, 2, 11, '', '', 1, 1),
(21, 3, 1, '', '', 1, 1),
(22, 3, 2, '', '', 1, 1),
(23, 3, 3, '', '', 1, 1),
(24, 3, 4, '', '', 1, 1),
(25, 3, 5, '', '', 1, 1),
(26, 3, 6, '', '', 1, 1),
(27, 3, 7, '', '', 1, 1),
(28, 3, 8, '', '', 1, 1),
(29, 3, 9, '', '', 1, 1),
(30, 3, 10, '', '', 1, 1),
(31, 3, 11, '', '', 1, 1),
(32, 4, 1, '', '', 1, 1),
(33, 4, 2, '', '', 1, 1),
(34, 4, 3, '', '', 1, 1),
(35, 4, 5, '', '', 1, 1),
(36, 4, 6, '', '', 1, 1),
(37, 4, 7, '', '', 1, 1),
(38, 4, 8, '', '', 1, 1),
(39, 4, 9, '', '', 1, 1),
(40, 4, 10, '', '', 1, 1),
(41, 4, 11, '', '', 1, 1),
(42, 5, 1, '', '', 1, 1),
(43, 5, 2, '', '', 1, 1),
(44, 5, 3, '', '', 1, 1),
(45, 5, 4, '', '', 1, 1),
(46, 5, 6, '', '', 1, 1),
(47, 5, 7, '', '', 1, 1),
(48, 5, 8, '', '', 1, 1),
(49, 5, 9, '', '', 1, 1),
(50, 5, 10, '', '', 1, 1),
(51, 5, 11, '', '', 1, 1),
(52, 6, 1, '', '', 1, 1),
(53, 6, 2, '', '', 1, 1),
(54, 6, 3, '', '', 1, 1),
(55, 6, 4, '', '', 1, 1),
(56, 6, 5, '', '', 1, 1),
(57, 6, 7, '', '', 1, 1),
(58, 6, 8, '', '', 1, 1),
(59, 6, 9, '', '', 1, 1),
(60, 6, 10, '', '', 1, 1),
(61, 6, 11, '', '', 1, 1),
(62, 7, 1, '', '', 1, 1),
(63, 7, 2, '', '', 1, 1),
(64, 7, 3, '', '', 1, 1),
(65, 7, 4, '', '', 1, 1),
(66, 7, 5, '', '', 1, 1),
(67, 7, 6, '', '', 1, 1),
(68, 7, 8, '', '', 1, 1),
(69, 7, 9, '', '', 1, 1),
(70, 7, 10, '', '', 1, 1),
(71, 7, 11, '', '', 1, 1),
(72, 8, 1, '', '', 1, 1),
(73, 8, 2, '', '', 1, 1),
(74, 8, 3, '', '', 1, 1),
(75, 8, 4, '', '', 1, 1),
(76, 8, 5, '', '', 1, 1),
(77, 8, 6, '', '', 1, 1),
(78, 8, 7, '', '', 1, 1),
(79, 8, 9, '', '', 1, 1),
(80, 8, 10, '', '', 1, 1),
(81, 8, 11, '', '', 1, 1),
(82, 9, 1, '', '', 1, 1),
(83, 9, 2, '', '', 1, 1),
(84, 9, 3, '', '', 1, 1),
(85, 9, 4, '', '', 1, 1),
(86, 9, 5, '', '', 1, 1),
(87, 9, 6, '', '', 1, 1),
(88, 9, 7, '', '', 1, 1),
(89, 9, 8, '', '', 1, 1),
(90, 9, 10, '', '', 1, 1),
(91, 9, 11, '', '', 1, 1),
(92, 10, 1, '', '', 1, 1),
(93, 10, 2, '', '', 1, 1),
(94, 10, 3, '', '', 1, 1),
(95, 10, 4, '', '', 1, 1),
(96, 10, 5, '', '', 1, 1),
(97, 10, 6, '', '', 1, 1),
(98, 10, 7, '', '', 1, 1),
(99, 10, 8, '', '', 1, 1),
(100, 10, 9, '', '', 1, 1),
(101, 10, 11, '', '', 1, 1),
(102, 11, 1, '', '', 1, 1),
(103, 11, 2, '', '', 1, 1),
(104, 11, 3, '', '', 1, 1),
(105, 11, 4, '', '', 1, 1),
(106, 11, 5, '', '', 1, 1),
(107, 11, 6, '', '', 1, 1),
(108, 11, 7, '', '', 1, 1),
(109, 11, 8, '', '', 1, 1),
(110, 11, 9, '', '', 1, 1),
(111, 11, 10, '', '', 1, 1),
(112, 1, 12, '', '', 1, 1),
(113, 1, 13, '', '', 1, 1),
(114, 1, 14, '', '', 1, 1),
(115, 1, 15, '', '', 1, 1),
(116, 2, 12, '', '', 1, 1),
(117, 2, 13, '', '', 1, 1),
(118, 2, 14, '', '', 1, 1),
(119, 2, 15, '', '', 1, 1),
(120, 3, 12, '', '', 1, 1),
(121, 3, 13, '', '', 1, 1),
(122, 3, 14, '', '', 1, 1),
(123, 3, 15, '', '', 1, 1),
(124, 4, 12, '', '', 1, 1),
(125, 4, 13, '', '', 1, 1),
(126, 4, 14, '', '', 1, 1),
(127, 4, 15, '', '', 1, 1),
(128, 5, 12, '', '', 1, 1),
(129, 5, 13, '', '', 1, 1),
(130, 5, 14, '', '', 1, 1),
(131, 5, 15, '', '', 1, 1),
(132, 6, 12, '', '', 1, 1),
(133, 6, 13, '', '', 1, 1),
(134, 6, 14, '', '', 1, 1),
(135, 6, 15, '', '', 1, 1),
(136, 7, 12, '', '', 1, 1),
(137, 7, 13, '', '', 1, 1),
(138, 7, 14, '', '', 1, 1),
(139, 7, 15, '', '', 1, 1),
(140, 8, 12, '', '', 1, 1),
(141, 8, 13, '', '', 1, 1),
(142, 8, 14, '', '', 1, 1),
(143, 8, 15, '', '', 1, 1),
(144, 9, 12, '', '', 1, 1),
(145, 9, 13, '', '', 1, 1),
(146, 9, 14, '', '', 1, 1),
(147, 9, 15, '', '', 1, 1),
(148, 10, 12, '', '', 1, 1),
(149, 10, 13, '', '', 1, 1),
(150, 10, 14, '', '', 1, 1),
(151, 10, 15, '', '', 1, 1),
(152, 11, 12, '', '', 1, 1),
(153, 11, 13, '', '', 1, 1),
(154, 11, 14, '', '', 1, 1),
(155, 11, 15, '', '', 1, 1),
(156, 12, 12, '', '', 1, 1),
(157, 12, 13, '', '', 1, 1),
(158, 12, 14, '', '', 1, 1),
(159, 12, 15, '', '', 1, 1),
(160, 13, 12, '', '', 1, 1),
(161, 13, 13, '', '', 1, 1),
(162, 13, 14, '', '', 1, 1),
(163, 13, 15, '', '', 1, 1),
(164, 14, 12, '', '', 1, 1),
(165, 14, 13, '', '', 1, 1),
(166, 14, 15, '', '', 1, 1),
(167, 12, 2, '', '', 1, 1),
(168, 12, 1, '', '', 1, 1),
(169, 12, 4, '', '', 1, 1),
(170, 12, 3, '', '', 1, 1),
(171, 12, 5, '', '', 1, 1),
(172, 12, 6, '', '', 1, 1),
(173, 12, 7, '', '', 1, 1),
(174, 12, 8, '', '', 1, 1),
(175, 12, 9, '', '', 1, 1),
(176, 12, 10, '', '', 1, 1),
(177, 12, 11, '', '', 1, 1),
(178, 13, 1, '', '', 1, 1),
(179, 13, 2, '', '', 1, 1),
(180, 13, 3, '', '', 1, 1),
(181, 13, 4, '', '', 1, 1),
(182, 13, 5, '', '', 1, 1),
(183, 13, 6, '', '', 1, 1),
(184, 13, 7, '', '', 1, 1),
(185, 13, 8, '', '', 1, 1),
(186, 13, 9, '', '', 1, 1),
(187, 13, 10, '', '', 1, 1),
(188, 13, 11, '', '', 1, 1),
(189, 14, 1, '', '', 1, 1),
(190, 14, 2, '', '', 1, 1),
(191, 14, 3, '', '', 1, 1),
(192, 14, 4, '', '', 1, 1),
(193, 14, 5, '', '', 1, 1),
(194, 14, 6, '', '', 1, 1),
(195, 14, 7, '', '', 1, 1),
(196, 14, 8, '', '', 1, 1),
(197, 14, 9, '', '', 1, 1),
(198, 14, 10, '', '', 1, 1),
(199, 14, 11, '', '', 1, 1),
(200, 15, 1, '', '', 1, 1),
(201, 15, 2, '', '', 1, 1),
(203, 15, 4, '', '', 1, 1),
(204, 15, 5, '', '', 1, 1),
(205, 15, 6, '', '', 1, 1),
(206, 15, 7, '', '', 1, 1),
(207, 15, 8, '', '', 1, 1),
(208, 15, 9, '', '', 1, 1),
(209, 15, 10, '', '', 1, 1),
(210, 15, 11, '', '', 1, 1),
(211, 15, 12, '', '', 1, 1),
(212, 15, 13, '', '', 1, 1),
(213, 15, 14, '', '', 1, 1),
(214, 17, 1, '23903711.18', '1', 0, 0),
(215, 17, 2, '840.00', '1', 0, 0),
(216, 17, 3, '840.00', '1', 0, 0),
(217, 17, 4, '1553049.55', '1', 0, 0),
(218, 17, 5, '202317.56', '1', 0, 0),
(219, 17, 6, '78023.58', '1', 0, 0),
(220, 17, 7, '259.43', '1', 0, 0),
(221, 17, 8, '580.60', '1', 0, 0),
(222, 17, 9, '209,999', '1', 0, 0),
(223, 17, 10, '10924.89', '1', 0, 0),
(224, 17, 11, '133158', '1', 0, 0),
(225, 17, 12, '20182.88', '1', 0, 0),
(226, 17, 13, '64.96', '1', 0, 0),
(227, 17, 14, '587.82', '1', 0, 0),
(228, 17, 15, '4319.25', '1', 0, 0),
(229, 1, 17, '1', '23903711', 0, 0),
(230, 2, 17, '1', '819.41', 0, 0),
(231, 3, 17, '1', '819.41', 0, 0),
(232, 4, 17, '1', '1522256.56', 0, 0),
(233, 5, 17, '1', '198297', 0, 0),
(234, 6, 17, '1', '76410.40', 0, 0),
(235, 7, 17, '1', '254.30', 0, 0),
(236, 8, 17, '1', '568.97', 0, 0),
(237, 9, 17, '1', '205399', 0, 0),
(238, 10, 17, '1', '10705.13', 0, 0),
(239, 11, 17, '1', '130475', 0, 0),
(240, 12, 17, '1', '19769.57', 0, 0),
(241, 13, 17, '1', '63.64', 0, 0),
(242, 14, 17, '1', '575.89', 0, 0),
(243, 15, 17, '1', '4,234.52', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ce_rates_live`
--

CREATE TABLE `ce_rates_live` (
  `id` int NOT NULL,
  `gateway_from` int DEFAULT NULL,
  `gateway_to` int DEFAULT NULL,
  `rate_from` varchar(255) DEFAULT NULL,
  `rate_to` varchar(255) DEFAULT NULL,
  `updated` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ce_rates_live`
--

INSERT INTO `ce_rates_live` (`id`, `gateway_from`, `gateway_to`, `rate_from`, `rate_to`, `updated`) VALUES
(1, 1, 2, '1', '28873.538100', 1690756454),
(2, 1, 3, '1', '28868.944500', 1690756455),
(3, 1, 4, '1', '15.543000', 1690756455),
(4, 1, 5, '1', '119.324700', 1690756455),
(5, 1, 6, '1', '309.573000', 1690756455),
(6, 1, 7, '1', '93020.419800', 1690756455),
(7, 1, 8, '1', '41580.544500', 1690756456),
(8, 1, 9, '1', '115.236000', 1690756456),
(9, 1, 10, '1', '2210.838300', 1690756456),
(10, 1, 11, '1', '181.150200', 1690756456),
(11, 2, 1, '1', '0.000034', 1690756457),
(12, 2, 3, '1', '0.990000', 1690756457),
(13, 2, 4, '1', '0.000533', 1690756457),
(14, 2, 5, '1', '0.004092', 1690756457),
(15, 2, 6, '1', '0.010623', 1690756458),
(16, 2, 7, '1', '3.189780', 1690756458),
(17, 2, 8, '1', '1.425600', 1690756458),
(18, 2, 9, '1', '0.003952', 1690756458),
(19, 2, 10, '1', '0.075804', 1690756458),
(20, 2, 11, '1', '0.006208', 1690756459),
(21, 3, 1, '1', '0.000034', 1690756459),
(22, 3, 2, '1', '0.990000', 1690756459),
(23, 3, 3, '1', '0.99', 1690756459),
(24, 3, 4, '1', '0.000533', 1690756460),
(25, 3, 5, '1', '0.004093', 1690756460),
(26, 3, 6, '1', '0.010623', 1690756460),
(27, 3, 7, '1', '3.189780', 1690756460),
(28, 3, 8, '1', '1.425600', 1690756460),
(29, 3, 9, '1', '0.003950', 1690756461),
(30, 3, 10, '1', '0.075804', 1690756461),
(31, 3, 11, '1', '0.006208', 1690756461),
(32, 4, 1, '1', '0.063043', 1690756461),
(33, 4, 2, '1', '1838.588400', 1690756462),
(34, 4, 3, '1', '1838.588400', 1690756462),
(35, 4, 5, '1', '7.600230', 1690756462),
(36, 4, 6, '1', '19.720800', 1690756463),
(37, 4, 7, '1', '5923.288800', 1690756463),
(38, 4, 8, '1', '2647.735200', 1690756463),
(39, 4, 9, '1', '7.336890', 1690756463),
(40, 4, 10, '1', '140.778000', 1690756464),
(41, 4, 11, '1', '11.543400', 1690756464),
(42, 5, 1, '1', '0.008211', 1690756464),
(43, 5, 2, '1', '239.481000', 1690756464),
(44, 5, 3, '1', '239.481000', 1690756464),
(45, 5, 4, '1', '0.128997', 1690756465),
(46, 5, 6, '1', '2.568060', 1690756465),
(47, 5, 7, '1', '771.526800', 1690756465),
(48, 5, 8, '1', '344.876400', 1690756465),
(49, 5, 9, '1', '0.955746', 1690756465),
(50, 5, 10, '1', '18.334800', 1690756466),
(51, 5, 11, '1', '1.501830', 1690756466),
(52, 6, 1, '1', '0.003164', 1690756466),
(53, 6, 2, '1', '92.307600', 1690756466),
(54, 6, 3, '1', '92.307600', 1690756467),
(55, 6, 4, '1', '0.049708', 1690756467),
(56, 6, 5, '1', '0.381546', 1690756467),
(57, 6, 7, '1', '297.386100', 1690756467),
(58, 6, 8, '1', '132.897600', 1690756467),
(59, 6, 9, '1', '0.368379', 1690756468),
(60, 6, 10, '1', '7.067610', 1690756468),
(61, 6, 11, '1', '0.578853', 1690756468),
(62, 7, 1, '1', '0.000011', 1690756468),
(63, 7, 2, '1', '0.307296', 1690756469),
(64, 7, 3, '1', '0.307296', 1690756469),
(65, 7, 4, '1', '0.000165', 1690756469),
(66, 7, 5, '1', '0.001270', 1690756469),
(67, 7, 6, '1', '0.003296', 1690756469),
(68, 7, 8, '1', '0.442431', 1690756470),
(69, 7, 9, '1', '0.001227', 1690756470),
(70, 7, 10, '1', '0.023552', 1690756470),
(71, 7, 11, '1', '0.001927', 1690756470),
(72, 8, 1, '1', '0.000024', 1690756471),
(73, 8, 2, '1', '0.687654', 1690756471),
(74, 8, 3, '1', '0.687654', 1690756471),
(75, 8, 4, '1', '0.000370', 1690756471),
(76, 8, 5, '1', '0.002842', 1690756472),
(77, 8, 6, '1', '0.007376', 1690756472),
(78, 8, 7, '1', '2.214630', 1690756472),
(79, 8, 9, '1', '0.002744', 1690756472),
(80, 8, 10, '1', '0.052658', 1690756472),
(81, 8, 11, '1', '0.004311', 1690756473),
(82, 9, 1, '1', '0.008505', 1690756473),
(83, 9, 2, '1', '248.074200', 1690756473),
(84, 9, 3, '1', '248.074200', 1690756473),
(85, 9, 4, '1', '0.133551', 1690756474),
(86, 9, 5, '1', '1.025640', 1690756474),
(87, 9, 6, '1', '2.660130', 1690756474),
(88, 9, 7, '1', '799.207200', 1690756474),
(89, 9, 8, '1', '357.142500', 1690756474),
(90, 9, 10, '1', '18.998100', 1690756475),
(91, 9, 11, '1', '1.555290', 1690756475),
(92, 10, 1, '1', '0.000443', 1690756475),
(93, 10, 2, '1', '12.929400', 1690756475),
(94, 10, 3, '1', '12.919500', 1690756475),
(95, 10, 4, '1', '0.006962', 1690756476),
(96, 10, 5, '1', '0.053430', 1690756476),
(97, 10, 6, '1', '0.138699', 1690756476),
(98, 10, 7, '1', '41.649300', 1690756476),
(99, 10, 8, '1', '18.612000', 1690756477),
(100, 10, 9, '1', '0.051599', 1690756477),
(101, 10, 11, '1', '0.081081', 1690756477),
(102, 11, 1, '1', '0.005412', 1690756477),
(103, 11, 2, '1', '157.875300', 1690756477),
(104, 11, 3, '1', '157.875300', 1690756478),
(105, 11, 4, '1', '0.084932', 1690756478),
(106, 11, 5, '1', '0.652608', 1690756478),
(107, 11, 6, '1', '1.692900', 1690756478),
(108, 11, 7, '1', '508.622400', 1690756479),
(109, 11, 8, '1', '227.254500', 1690756479),
(110, 11, 9, '1', '0.630036', 1690756479),
(111, 11, 10, '1', '12.087900', 1690756479),
(112, 1, 12, '1', '1196.088300', 1690756479),
(113, 1, 13, '1', '371746.336500', 1690756480),
(114, 1, 14, '1', '41130.035100', 1690756480),
(115, 1, 15, '1', '5588.064900', 1690756481),
(116, 2, 12, '1', '0.040996', 1690756481),
(117, 2, 13, '1', '12.741300', 1690756481),
(118, 2, 14, '1', '1.410750', 1690756481),
(119, 2, 15, '1', '0.191565', 1690756482),
(120, 3, 12, '1', '0.041016', 1690756482),
(121, 3, 13, '1', '12.741300', 1690756482),
(122, 3, 14, '1', '1.410750', 1690756482),
(123, 3, 15, '1', '0.191565', 1690756482),
(124, 4, 12, '1', '76.131000', 1690756483),
(125, 4, 13, '1', '23668.623000', 1690756483),
(126, 4, 14, '1', '2619.807300', 1690756483),
(127, 4, 15, '1', '355.835700', 1690756483),
(128, 5, 12, '1', '9.919800', 1690756484),
(129, 5, 13, '1', '3083.939100', 1690756484),
(130, 5, 14, '1', '341.361900', 1690756484),
(131, 5, 15, '1', '46.361700', 1690756484),
(132, 6, 12, '1', '3.822390', 1690756484),
(133, 6, 13, '1', '1188.178200', 1690756485),
(134, 6, 14, '1', '131.511600', 1690756485),
(135, 6, 15, '1', '17.859600', 1690756486),
(136, 7, 12, '1', '0.012722', 1690756486),
(137, 7, 13, '1', '3.955050', 1690756486),
(138, 7, 14, '1', '0.437778', 1690756486),
(139, 7, 15, '1', '0.059450', 1690756486),
(140, 8, 12, '1', '0.028482', 1690756487),
(141, 8, 13, '1', '8.853570', 1690756487),
(142, 8, 14, '1', '0.980100', 1690756487),
(143, 8, 15, '1', '0.133056', 1690756487),
(144, 9, 12, '1', '10.276200', 1690756488),
(145, 9, 13, '1', '3193.918200', 1690756488),
(146, 9, 14, '1', '353.578500', 1690756488),
(147, 9, 15, '1', '48.015000', 1690756488),
(148, 10, 12, '1', '0.535590', 1690756488),
(149, 10, 13, '1', '166.448700', 1690756489),
(150, 10, 14, '1', '18.423900', 1690756489),
(151, 10, 15, '1', '2.502720', 1690756489),
(152, 11, 12, '1', '6.537960', 1690756489),
(153, 11, 13, '1', '2032.509600', 1690756490),
(154, 11, 14, '1', '225.007200', 1690756490),
(155, 11, 15, '1', '30.561300', 1690756490),
(156, 12, 12, '1', '0.99', 1690756490),
(157, 12, 13, '1', '307.781100', 1690756490),
(158, 12, 14, '1', '34.075800', 1690756490),
(159, 12, 15, '1', '4.627260', 1690756491),
(160, 13, 12, '1', '0.003185', 1690756491),
(161, 13, 13, '1', '0.99', 1690756491),
(162, 13, 14, '1', '0.109593', 1690756491),
(163, 13, 15, '1', '0.014880', 1690756492),
(164, 14, 12, '1', '0.028769', 1690756492),
(165, 14, 13, '1', '8.947620', 1690756493),
(166, 14, 15, '1', '0.134541', 1690756493),
(167, 12, 2, '1', '23.908500', 1690756493),
(168, 12, 1, '1', '0.000820', 1690756493),
(169, 12, 4, '1', '0.012870', 1690756494),
(170, 12, 3, '1', '23.908500', 1690756494),
(171, 12, 5, '1', '0.098802', 1690756494),
(172, 12, 6, '1', '0.256410', 1690756494),
(173, 12, 7, '1', '77.051700', 1690756494),
(174, 12, 8, '1', '34.412400', 1690756495),
(175, 12, 9, '1', '0.095396', 1690756495),
(176, 12, 10, '1', '1.830510', 1690756495),
(177, 12, 11, '1', '0.149886', 1690756495),
(178, 13, 1, '1', '0.000003', 1690756496),
(179, 13, 2, '1', '0.076903', 1690756496),
(180, 13, 3, '1', '0.076903', 1690756496),
(181, 13, 4, '1', '0.000041', 1690756496),
(182, 13, 5, '1', '0.000318', 1690756496),
(183, 13, 6, '1', '0.000825', 1690756497),
(184, 13, 7, '1', '0.247797', 1690756497),
(185, 13, 8, '1', '0.110682', 1690756497),
(186, 13, 9, '1', '0.000307', 1690756497),
(187, 13, 10, '1', '0.005889', 1690756498),
(188, 13, 11, '1', '0.000482', 1690756498),
(189, 14, 1, '1', '0.000024', 1690756498),
(190, 14, 2, '1', '0.694980', 1690756498),
(191, 14, 3, '1', '0.695079', 1690756498),
(192, 14, 4, '1', '0.000374', 1690756499),
(193, 14, 5, '1', '0.002872', 1690756499),
(194, 14, 6, '1', '0.007455', 1690756499),
(195, 14, 7, '1', '2.240370', 1690756499),
(196, 14, 8, '1', '1.000890', 1690756499),
(197, 14, 9, '1', '0.002773', 1690756500),
(198, 14, 10, '1', '0.053222', 1690756500),
(199, 14, 11, '1', '0.004358', 1690756500),
(200, 15, 1, '1', '0.000175', 1690756500),
(201, 15, 2, '1', '5.115330', 1690756501),
(202, 15, 3, '1', '5.310360', 1690062689),
(203, 15, 4, '1', '0.002754', 1690756501),
(204, 15, 5, '1', '0.021146', 1690756501),
(205, 15, 6, '1', '0.054866', 1690756501),
(206, 15, 7, '1', '16.483500', 1690756502),
(207, 15, 8, '1', '7.363620', 1690756502),
(208, 15, 9, '1', '0.020404', 1690756502),
(209, 15, 10, '1', '0.391644', 1690756502),
(210, 15, 11, '1', '0.032076', 1690756503),
(211, 15, 12, '1', '0.211860', 1690756503),
(212, 15, 13, '1', '65.854800', 1690756503),
(213, 15, 14, '1', '7.285410', 1690756503),
(214, 17, 1, '23903711.18', '1', 1690756503),
(215, 17, 2, '835.85', '1', 1690756503),
(216, 17, 3, '835.85', '1', 1690756503),
(217, 17, 4, '1553049.55', '1', 1690756503),
(218, 17, 5, '202317.56', '1', 1690756503),
(219, 17, 6, '78023.58', '1', 1690756503),
(220, 17, 7, '259.43', '1', 1690756503),
(221, 17, 8, '580.60', '1', 1690756503),
(222, 17, 9, '209,999', '1', 1690756503),
(223, 17, 10, '10924.89', '1', 1690756503),
(224, 17, 11, '133158', '1', 1690756503),
(225, 17, 12, '20182.88', '1', 1690756503),
(226, 17, 13, '64.96', '1', 1690756503),
(227, 17, 14, '587.82', '1', 1690756503),
(228, 17, 15, '4319.25', '1', 1690756503),
(229, 1, 17, '1', '23903711', 1690756503),
(230, 2, 17, '1', '819.41', 1690756503),
(231, 3, 17, '1', '819.41', 1690756503),
(232, 4, 17, '1', '1522256.56', 1690756503),
(233, 5, 17, '1', '198297', 1690756503),
(234, 6, 17, '1', '76410.40', 1690756503),
(235, 7, 17, '1', '254.30', 1690756503),
(236, 8, 17, '1', '568.97', 1690756503),
(237, 9, 17, '1', '205399', 1690756503),
(238, 10, 17, '1', '10705.13', 1690756503),
(239, 11, 17, '1', '130475', 1690756503),
(240, 12, 17, '1', '19769.57', 1690756503),
(241, 13, 17, '1', '63.64', 1690756503),
(242, 14, 17, '1', '575.89', 1690756503),
(243, 15, 17, '1', '4,234.52', 1690756503);

-- --------------------------------------------------------

--
-- Table structure for table `ce_rates_saved`
--

CREATE TABLE `ce_rates_saved` (
  `id` int NOT NULL,
  `gateway_from` int DEFAULT NULL,
  `gateway_from_prefix` varchar(255) DEFAULT NULL,
  `rate_from` varchar(255) DEFAULT NULL,
  `rate_to` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ce_reserve_requests`
--

CREATE TABLE `ce_reserve_requests` (
  `id` int NOT NULL,
  `gateway_id` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `requested_on` int DEFAULT NULL,
  `updated_on` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ce_settings`
--

CREATE TABLE `ce_settings` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `infoemail` varchar(255) DEFAULT NULL,
  `supportemail` varchar(255) DEFAULT NULL,
  `order_type` int DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL,
  `invest_plugin` int DEFAULT NULL,
  `invest_insurance_plugin` int DEFAULT NULL,
  `invest_insurance_fee` varchar(11) DEFAULT NULL,
  `invest_insurance_duration` int DEFAULT NULL,
  `default_language` varchar(255) DEFAULT NULL,
  `default_template` varchar(255) DEFAULT NULL,
  `curcnv_api` varchar(255) DEFAULT NULL,
  `cryptocnv_api` varchar(255) DEFAULT NULL,
  `au_rate_int` int DEFAULT NULL,
  `referral_comission` varchar(10) DEFAULT NULL,
  `referral_min_withdrawal` varchar(10) DEFAULT NULL,
  `show_operator_status` int DEFAULT NULL,
  `operator_status` int DEFAULT NULL,
  `show_worktime` int DEFAULT NULL,
  `worktime_start` varchar(11) DEFAULT NULL,
  `worktime_end` varchar(11) DEFAULT NULL,
  `worktime_gmt` varchar(11) DEFAULT NULL,
  `enable_recaptcha` int DEFAULT NULL,
  `recaptcha_publickey` varchar(255) DEFAULT NULL,
  `recaptcha_privatekey` varchar(255) DEFAULT NULL,
  `expire_uncompleted_time` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ce_settings`
--

INSERT INTO `ce_settings` (`id`, `title`, `description`, `keywords`, `name`, `url`, `infoemail`, `supportemail`, `order_type`, `purchase_code`, `invest_plugin`, `invest_insurance_plugin`, `invest_insurance_fee`, `invest_insurance_duration`, `default_language`, `default_template`, `curcnv_api`, `cryptocnv_api`, `au_rate_int`, `referral_comission`, `referral_min_withdrawal`, `show_operator_status`, `operator_status`, `show_worktime`, `worktime_start`, `worktime_end`, `worktime_gmt`, `enable_recaptcha`, `recaptcha_publickey`, `recaptcha_privatekey`, `expire_uncompleted_time`) VALUES
(1, 'SamDefi', 'At SamDeFi, we pride ourselves on being your trusted platform for trading digital assets. With a solid experience as a p2p Trader on Binance, OKX, Airtm, and Bybit with more than 21,000 completed trades and 5600 positive feedback.', 'SamDefi', 'SamDefi', 'https://samdefi.cl/', 'info@samdefi.cl', 'support@samdefi.cl', NULL, NULL, NULL, NULL, NULL, NULL, 'Spanish', 'LightExchanger', '91915b4d68d147dc2659', 'baa7623e97b826fd94130971d98d56144edc906a7ddb0b410ed2b290f19ef085', 360, NULL, NULL, NULL, NULL, NULL, '10 AM', '10 PM', 'GMT-4', NULL, NULL, NULL, 3600);

-- --------------------------------------------------------

--
-- Table structure for table `ce_tickets`
--

CREATE TABLE `ce_tickets` (
  `id` int NOT NULL,
  `uid` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `content` text,
  `order_id` int DEFAULT NULL,
  `created` int DEFAULT NULL,
  `updated` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `served_level` int DEFAULT NULL,
  `served_by` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ce_tickets_messages`
--

CREATE TABLE `ce_tickets_messages` (
  `id` int NOT NULL,
  `tid` int DEFAULT NULL,
  `message` text,
  `author` int DEFAULT NULL,
  `created` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ce_users`
--

CREATE TABLE `ce_users` (
  `id` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `email_hash` varchar(255) DEFAULT NULL,
  `email_verified` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `twoFA` int DEFAULT NULL,
  `registered_on` varchar(255) DEFAULT NULL,
  `last_login` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `birthday_date` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `mobile_verified` int DEFAULT NULL,
  `document_verified` int DEFAULT NULL,
  `level` int DEFAULT NULL,
  `close_request` int DEFAULT NULL,
  `discount_level` int DEFAULT NULL,
  `invited_by` int DEFAULT NULL,
  `exchanged_volume` int DEFAULT NULL,
  `documents_pending` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ce_users`
--

INSERT INTO `ce_users` (`id`, `email`, `username`, `password`, `password_hash`, `email_hash`, `email_verified`, `status`, `ip`, `twoFA`, `registered_on`, `last_login`, `first_name`, `last_name`, `birthday_date`, `country`, `city`, `zip_code`, `address`, `mobile_number`, `mobile_verified`, `document_verified`, `level`, `close_request`, `discount_level`, `invited_by`, `exchanged_volume`, `documents_pending`) VALUES
(1, 'info@samdefi.cl', 'sam_admin', '$2y$10$NforTNoxtLMV3FlVNQ9j4OzJQds6MOUP/JrqUTmlDG/207.XkWo36', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(2, 'samu0689@gmail.com', '', '$2y$10$l/pAtTJwYZsUn5CMdsK4Xu9kmio6Drl8l8iX7dw7qAWI/Fuv.EdPC', '', 'B3A3E2', 1, 1, '186.189.90.181', 1, '1688513968', '1690252997', 'Samuel Enrique', 'Saldaña Almonte', '06-06-1989', 'Chile', 'Santiago', '9060903', '8591 LEBRELES', '+56935836759', 0, 1, 3, NULL, 0, NULL, 100, 0),
(3, 'ranaali9320@gmail.com', '', '$2y$10$nCfTigG5.i5IAKIz67pgLuJXaHvi6KCfgWTN8ph37l0QYE0LmGX6C', '', '1cce3e28846188ef2ce5f86f6', 1, 16, '122.161.67.190', 0, '1690109265', '1691017335', '', '', '', '', '', '', '', '', 0, 1, 3, NULL, 0, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ce_users_documents`
--

CREATE TABLE `ce_users_documents` (
  `id` int NOT NULL,
  `uid` int DEFAULT NULL,
  `document_type` int DEFAULT NULL,
  `document_path` text,
  `uploaded` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `u_field_1` varchar(255) DEFAULT NULL,
  `u_field_2` varchar(255) DEFAULT NULL,
  `u_field_3` varchar(255) DEFAULT NULL,
  `u_field_4` varchar(255) DEFAULT NULL,
  `u_field_5` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ce_users_documents`
--

INSERT INTO `ce_users_documents` (`id`, `uid`, `document_type`, `document_path`, `uploaded`, `status`, `u_field_1`, `u_field_2`, `u_field_3`, `u_field_4`, `u_field_5`) VALUES
(1, 3, 1, 'd8a8528df725533c11b5/3/c382aadf646504402b5a.png', 1690581603, 3, '**************', '', 'Screenshot_2178.png', '', ''),
(2, 3, 1, 'd8a8528df725533c11b5/3/7511552ae6d4dae691f7.png', 1690585212, 1, '**************', '', 'Screenshot_2178.png', '', ''),
(3, 3, 1, 'd8a8528df725533c11b5/3/4eef47999909a937874d.png', 1690661391, 1, '**************', 'sgs', '512.png', '', ''),
(4, 2, 1, 'd8a8528df725533c11b5/2/e338d8820d3df3dcca7d.pdf', 1690662000, 3, '26131960-8', '', 'Rut_Ambos_Lados_Nuevo.pdf', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ce_users_earnings`
--

CREATE TABLE `ce_users_earnings` (
  `id` int NOT NULL,
  `uid` int DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `updated` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ce_users_reviews`
--

CREATE TABLE `ce_users_reviews` (
  `id` int NOT NULL,
  `uid` int DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `posted` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ce_users_withdrawals`
--

CREATE TABLE `ce_users_withdrawals` (
  `id` int NOT NULL,
  `uid` int DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `gateway` int DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `requested_on` int DEFAULT NULL,
  `processed_on` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ce_xmlrates`
--

CREATE TABLE `ce_xmlrates` (
  `id` int NOT NULL,
  `gateway_from` int DEFAULT NULL,
  `gateway_from_prefix` varchar(255) DEFAULT NULL,
  `gateway_to` int DEFAULT NULL,
  `gateway_to_prefix` varchar(255) DEFAULT NULL,
  `rate_from` varchar(255) DEFAULT NULL,
  `rate_to` varchar(255) DEFAULT NULL,
  `automatic_rate` int NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ce_discount_system`
--
ALTER TABLE `ce_discount_system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_faq`
--
ALTER TABLE `ce_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_gateways`
--
ALTER TABLE `ce_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_gateways_directions`
--
ALTER TABLE `ce_gateways_directions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_gateways_fields`
--
ALTER TABLE `ce_gateways_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_gateways_rules`
--
ALTER TABLE `ce_gateways_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_invest_active`
--
ALTER TABLE `ce_invest_active`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_invest_balances`
--
ALTER TABLE `ce_invest_balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_invest_deposits`
--
ALTER TABLE `ce_invest_deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_invest_earnings`
--
ALTER TABLE `ce_invest_earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_invest_plans`
--
ALTER TABLE `ce_invest_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_invest_withdrawals`
--
ALTER TABLE `ce_invest_withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_news`
--
ALTER TABLE `ce_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_operators`
--
ALTER TABLE `ce_operators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_operators_activity`
--
ALTER TABLE `ce_operators_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_orders`
--
ALTER TABLE `ce_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_orders_attachments`
--
ALTER TABLE `ce_orders_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_orders_values`
--
ALTER TABLE `ce_orders_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_pages`
--
ALTER TABLE `ce_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_rates`
--
ALTER TABLE `ce_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_rates_live`
--
ALTER TABLE `ce_rates_live`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_rates_saved`
--
ALTER TABLE `ce_rates_saved`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_reserve_requests`
--
ALTER TABLE `ce_reserve_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_settings`
--
ALTER TABLE `ce_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_tickets`
--
ALTER TABLE `ce_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_tickets_messages`
--
ALTER TABLE `ce_tickets_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_users`
--
ALTER TABLE `ce_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_users_documents`
--
ALTER TABLE `ce_users_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_users_earnings`
--
ALTER TABLE `ce_users_earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_users_reviews`
--
ALTER TABLE `ce_users_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_users_withdrawals`
--
ALTER TABLE `ce_users_withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce_xmlrates`
--
ALTER TABLE `ce_xmlrates`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ce_discount_system`
--
ALTER TABLE `ce_discount_system`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ce_faq`
--
ALTER TABLE `ce_faq`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ce_gateways`
--
ALTER TABLE `ce_gateways`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ce_gateways_directions`
--
ALTER TABLE `ce_gateways_directions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ce_gateways_fields`
--
ALTER TABLE `ce_gateways_fields`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ce_gateways_rules`
--
ALTER TABLE `ce_gateways_rules`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ce_invest_active`
--
ALTER TABLE `ce_invest_active`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100000;

--
-- AUTO_INCREMENT for table `ce_invest_balances`
--
ALTER TABLE `ce_invest_balances`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ce_invest_deposits`
--
ALTER TABLE `ce_invest_deposits`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100000;

--
-- AUTO_INCREMENT for table `ce_invest_earnings`
--
ALTER TABLE `ce_invest_earnings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ce_invest_plans`
--
ALTER TABLE `ce_invest_plans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100000;

--
-- AUTO_INCREMENT for table `ce_invest_withdrawals`
--
ALTER TABLE `ce_invest_withdrawals`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100000;

--
-- AUTO_INCREMENT for table `ce_news`
--
ALTER TABLE `ce_news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ce_operators`
--
ALTER TABLE `ce_operators`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ce_operators_activity`
--
ALTER TABLE `ce_operators_activity`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ce_orders`
--
ALTER TABLE `ce_orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000003;

--
-- AUTO_INCREMENT for table `ce_orders_attachments`
--
ALTER TABLE `ce_orders_attachments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ce_orders_values`
--
ALTER TABLE `ce_orders_values`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ce_pages`
--
ALTER TABLE `ce_pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ce_rates`
--
ALTER TABLE `ce_rates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `ce_rates_live`
--
ALTER TABLE `ce_rates_live`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `ce_rates_saved`
--
ALTER TABLE `ce_rates_saved`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ce_reserve_requests`
--
ALTER TABLE `ce_reserve_requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ce_settings`
--
ALTER TABLE `ce_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ce_tickets`
--
ALTER TABLE `ce_tickets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100000;

--
-- AUTO_INCREMENT for table `ce_tickets_messages`
--
ALTER TABLE `ce_tickets_messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ce_users`
--
ALTER TABLE `ce_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ce_users_documents`
--
ALTER TABLE `ce_users_documents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ce_users_earnings`
--
ALTER TABLE `ce_users_earnings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ce_users_reviews`
--
ALTER TABLE `ce_users_reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ce_users_withdrawals`
--
ALTER TABLE `ce_users_withdrawals`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ce_xmlrates`
--
ALTER TABLE `ce_xmlrates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
