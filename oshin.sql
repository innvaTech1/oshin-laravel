-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 27, 2024 at 08:13 PM
-- Server version: 8.0.39-0ubuntu0.24.04.2
-- PHP Version: 8.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oshin`
--

-- --------------------------------------------------------

--
-- Table structure for table `aamarpay_payments`
--

CREATE TABLE `aamarpay_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `store_id` text COLLATE utf8mb4_general_ci NOT NULL,
  `signature_key` text COLLATE utf8mb4_general_ci NOT NULL,
  `mode` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `currency_rate` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  `prefix` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aamarpay_payments`
--

INSERT INTO `aamarpay_payments` (`id`, `store_id`, `signature_key`, `mode`, `currency_rate`, `country_code`, `currency_code`, `status`, `created_at`, `updated_at`, `currency_id`, `prefix`) VALUES
(1, 'aamarpaytest', 'dbb74894e82415a2f7ff0ec3a97e4183', 'live', NULL, NULL, NULL, 1, NULL, '2024-09-02 21:14:46', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint UNSIGNED NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `description`, `banner_image`, `status`, `created_at`, `updated_at`) VALUES
(1, '<h2 class=\"elementor-heading-title elementor-size-default\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1; color: rgb(34, 34, 34); font-size: 24px;\">About Us</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: inherit; font-size: inherit; color: inherit; font-family: inherit;\"><a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all; box-shadow: none;\">Oshin</a>&nbsp;is an authentic product’s online marketplace. Through this marketplace, we try to give our Customers the convenience of purchasing environment of all types of authentic products they need without any hassle. It has been Launch in 2020 with the conviction to go far. We urge our Customers to purchase all kinds of high quality and exclusive products as well as various branded at retail and wholesale prices and made in the country and imported from abroad. We also have a corner called Gift Corner on our platform. From where our Customers can wish their loved ones on different occasions by sending various gift items stored in this corner, starting from bouquet of flowers.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: inherit; font-size: inherit; color: inherit; font-family: inherit;\">This is a multi-vendor e-commerce platform. To understand the nature of this platform, we can focus on the following four points:</p><h3 class=\"elementor-image-box-title\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); color: rgb(34, 34, 34); font-size: 20px; letter-spacing: 0.8px;\">Re-tail</h3><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); color: rgb(34, 34, 34); font-size: 20px; letter-spacing: 0.8px;\"><span style=\"color: rgb(136, 136, 136); font-size: 16px; letter-spacing: 0.64px;\">This site is basically a retail products platform of our multi-vendors.</span><br></p><h3 class=\"elementor-image-box-title\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); color: rgb(34, 34, 34); font-size: 20px; letter-spacing: 0.8px;\">Wholesale</h3><p style=\"margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); padding: 0px; color: rgb(34, 34, 34); font-size: 20px; letter-spacing: 0.8px;\"><span style=\"color: rgb(136, 136, 136); font-size: 16px; letter-spacing: 0.64px;\">This section is only for our wholesale customers. In this case we have a little bit of obligation. You need to open a separate account as a wholesale customer to purchase any wholesale product.</span><br></p><h3 class=\"elementor-image-box-title\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); color: rgb(34, 34, 34); font-size: 20px; letter-spacing: 0.8px;\">Gift Corner</h3><p style=\"margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); padding: 0px; color: rgb(34, 34, 34); font-size: 20px; letter-spacing: 0.8px;\"><span style=\"color: rgb(136, 136, 136); font-size: 16px; letter-spacing: 0.64px;\">Through Gift Corner, any of our Customers from home and abroad can wish their loved ones by sending various gift items stored in this corner, starting from bouquet of flowers. Here need to complete in advance payment for Gift Corner’s gift items. When placing an order in the Gift Corner, there needs to mention sender’s name, relation between gift sender and gift receiver, receiver’s name, address of receiver, required receiving date and time of the gift should be specified.</span><br></p><h3 class=\"elementor-image-box-title\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); color: rgb(34, 34, 34); font-size: 20px; letter-spacing: 0.8px;\">Pre-order</h3><p style=\"margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); padding: 0px; color: rgb(34, 34, 34); font-size: 20px; letter-spacing: 0.8px;\"><span style=\"color: rgb(136, 136, 136); font-size: 16px; letter-spacing: 0.64px;\">Only advance orders are collected for the products presented in this section. And the delivery of the product is completed within a promised time. In this way our customers get the product according to their demand by adding very limited profit to the price produced. Which is beneficial for both our buyer and producer.</span></p><p style=\"margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h3-line-height); padding: 0px; color: rgb(34, 34, 34); font-size: 20px; letter-spacing: 0.8px;\"><span style=\"color: rgb(136, 136, 136); font-size: 16px; letter-spacing: 0.64px;\"><br></span></p><span style=\"letter-spacing: 0.32px;\">Following are some of our key focus areas in moving our e-commerce platform towards to our specific goals:</span><br><br><ol><li style=\"padding: 0px; margin: 0px; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif; width: 626.5px; font-size: 16px; line-height: 1.6em; letter-spacing: 0.32px;\"><span style=\"letter-spacing: 0.32px;\"><span style=\"letter-spacing: normal;\">Reaching the hands of the Customers of authentic products.</span></span></li><li style=\"padding: 0px; margin: 0px; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif; width: 626.5px; font-size: 16px; line-height: 1.6em; letter-spacing: 0.32px;\"><span style=\"letter-spacing: 0.32px;\"><span style=\"letter-spacing: normal;\">To ensure the correct quality of the product.</span></span></li><li style=\"padding: 0px; margin: 0px; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif; width: 626.5px; font-size: 16px; line-height: 1.6em; letter-spacing: 0.32px;\"><span style=\"letter-spacing: 0.32px;\"><span style=\"letter-spacing: normal;\">To ensure fair price.</span></span></li><li style=\"padding: 0px; margin: 0px; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif; width: 626.5px; font-size: 16px; line-height: 1.6em; letter-spacing: 0.32px;\"><span style=\"letter-spacing: 0.32px;\"><span style=\"letter-spacing: normal;\">Commitment is the most important thing.</span></span></li><li style=\"padding: 0px; margin: 0px; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif; width: 626.5px; font-size: 16px; line-height: 1.6em; letter-spacing: 0.32px;\"><span style=\"letter-spacing: 0.32px;\"><span style=\"letter-spacing: normal;\">To ensure delivery of goods to our Customers within 1 to 4 working days of confirming the order (inside Dhaka) and within 2 to 7 working days (outside Dhaka).</span></span></li><li style=\"padding: 0px; margin: 0px; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif; width: 626.5px; font-size: 16px; line-height: 1.6em; letter-spacing: 0.32px;\"><span style=\"letter-spacing: 0.32px;\"><span style=\"letter-spacing: normal;\">To avoid delivery charge, Customers need to confirm an order at least Rs. 1000 through advance payment.</span></span></li><li style=\"padding: 0px; margin: 0px; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif; width: 626.5px; font-size: 16px; line-height: 1.6em; letter-spacing: 0.32px;\"><span style=\"letter-spacing: 0.32px;\"><span style=\"letter-spacing: normal;\">Evaluate every word of our buyers and try to resolve any grievances very quickly and with utmost importance.</span></span></li><li style=\"padding: 0px; margin: 0px; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif; width: 626.5px; font-size: 16px; line-height: 1.6em; letter-spacing: 0.32px;\"><span style=\"letter-spacing: 0.32px;\"><span style=\"letter-spacing: normal;\">If for any unfortunate reason the ordered product has run out of stock in our particular vendor, cancel the order by notifying the concerned esteemed Customer within 24 hours (maximum 48 hours).</span></span></li><li style=\"padding: 0px; margin: 0px; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif; width: 626.5px; font-size: 16px; line-height: 1.6em; letter-spacing: 0.32px;\"><span style=\"letter-spacing: 0.32px;\"><span style=\"letter-spacing: normal;\">If our Customers return a product for any specific reason, the correct product must be delivered to them again within 7-15 working days. If for any reason we fail to deliver the correct product within the stipulated time, the money received from the Customer should be remitted to his bank account within 7-15 working days.</span></span></li><li style=\"padding: 0px; margin: 0px; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif; width: 626.5px; font-size: 16px; line-height: 1.6em; letter-spacing: 0.32px;\"><span style=\"letter-spacing: 0.32px;\"><span style=\"letter-spacing: normal;\">Attempting to offer affordable prices and offers to our Customer in general in the light of different occasions or different offers from our vendors.</span></span></li><li style=\"padding: 0px; margin: 0px; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; --widgets-spacing: 20px 20px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif; width: 626.5px; font-size: 16px; line-height: 1.6em; letter-spacing: 0.32px;\"><span style=\"letter-spacing: 0.32px;\"><span style=\"letter-spacing: normal;\">Buyers are the most important to us. Changing any of our decisions over time in order to make shopping easier for the Customers.</span></span></li></ol><span style=\"letter-spacing: 0.32px;\"><br></span><span style=\"color: rgb(136, 136, 136); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.32px;\">Above all, we are expecting for everyone’s cooperation and advice in anticipation of our success.</span><span style=\"color: rgb(136, 136, 136); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.32px;\"><br></span>', 'uploads/custom-images/about-us-2022-02-11-03-38-59-6582.jpg', NULL, '2022-01-30 12:30:23', '2024-08-17 18:55:10');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_general_ci NOT NULL,
  `city_id` bigint UNSIGNED NOT NULL,
  `state_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `default_address` enum('yes','no') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `address`, `city_id`, `state_id`, `user_id`, `type`, `name`, `last_name`, `default_address`, `phone`, `email`, `additional_info`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 1, 1, 13, NULL, 'Rizvi', NULL, 'no', '01740497649', NULL, NULL, '2024-07-15 15:38:19', '2024-07-15 15:38:19'),
(2, 'Chittagong Road', 11, 7, 13, NULL, 'Ahmed', NULL, 'no', '01600685215', NULL, NULL, '2024-07-15 15:44:53', '2024-07-15 15:44:53'),
(7, 'Chittagong Road', 1, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:11:15', '2024-07-31 18:11:15'),
(8, 'Chittagong Road', 1, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:17:51', '2024-07-31 18:17:51'),
(9, 'Chittagong Road', 1, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:18:42', '2024-07-31 18:18:42'),
(10, 'Chittagong Road', 1, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:21:29', '2024-07-31 18:21:29'),
(11, 'Chittagong Road', 1, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:22:33', '2024-07-31 18:22:33'),
(12, 'Chittagong Road', 1, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:23:59', '2024-07-31 18:23:59'),
(13, 'Chittagong Road', 1, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:25:02', '2024-07-31 18:25:02'),
(14, 'Chittagong Road', 1, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:26:10', '2024-07-31 18:26:10'),
(15, 'Chittagong Road', 1, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:26:22', '2024-07-31 18:26:22'),
(16, 'Chittagong Road', 1, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:27:39', '2024-07-31 18:27:39'),
(17, 'Chittagong Road', 1, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:29:48', '2024-07-31 18:29:48'),
(18, 'Chittagong Road', 1, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:30:25', '2024-07-31 18:30:25'),
(19, 'Chittagong Road', 1, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:31:35', '2024-07-31 18:31:35'),
(20, 'Chittagong Road', 1, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:32:15', '2024-07-31 18:32:15'),
(22, 'Chittagong Road', 1, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:35:33', '2024-07-31 18:35:33'),
(23, 'Chittagong Road', 1, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:37:28', '2024-07-31 18:37:28'),
(29, 'Chittagong Road', 2, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:45:53', '2024-07-31 18:45:53'),
(30, 'Chittagong Road', 2, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:47:27', '2024-07-31 18:47:27'),
(31, 'Chittagong Road', 2, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:48:02', '2024-07-31 18:48:02'),
(32, 'Chittagong Road', 2, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:48:26', '2024-07-31 18:48:26'),
(33, 'Chittagong Road', 2, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:48:40', '2024-07-31 18:48:40'),
(34, 'Chittagong Road', 2, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:49:45', '2024-07-31 18:49:45'),
(35, 'Chittagong Road', 2, 1, NULL, 'home', 'Weaving Park', NULL, NULL, '01600685215', NULL, NULL, '2024-07-31 18:50:35', '2024-07-31 18:50:35'),
(49, 'gsdfg', 12, 2, 18, NULL, 'efsergsdg', NULL, 'no', 'gdsgfg', NULL, NULL, '2024-08-31 01:37:42', '2024-08-31 01:37:42'),
(50, 'gfssdg', 12, 2, 18, NULL, 'fdsdfg', NULL, 'no', 'fgf', NULL, NULL, '2024-08-31 01:40:53', '2024-08-31 01:40:53'),
(66, 'Tower', 27, 4, 21, 'shipping', 'Rizvi Ahmed', NULL, NULL, '01740497649', NULL, NULL, '2024-10-27 19:55:34', '2024-10-27 20:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_type` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `forget_password_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `admin_type`, `name`, `email`, `image`, `email_verified_at`, `password`, `remember_token`, `status`, `forget_password_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'John Doe', 'admin@gmail.com', 'uploads/website-images/ibrahim-khalil-2022-01-30-02-48-50-5743.jpg', NULL, '$2y$10$vDLsSUcLA0nZZayiIO/bKONVCnqzfVwvxSMnMJ1nIH5cLFm9jBEk6', 'dnSanHaualR6fii6Ett10tGIpGkrdylRbS6EpQyQZllVG6W9QJXdx1iILO3R', 1, 'KghrcqUVX6aKKUrP45Y02bDDZ2zcssaHHTgxssBkxPiduKetXTFjqyxmrMie8Vp5cDSq8KZjVw7U9LkcWuQdiMsbN5F1V7U8ZSJ9', NULL, '2022-02-07 04:50:11'),
(5, 0, 'David Simmons', 'admin1@gmail.com', NULL, NULL, '$2y$10$xLgODD6BDFlE1.pkkqCbrewtDS28BlzJZdV6DRj4ZlMmg139Xaxdi', NULL, 1, NULL, '2022-02-07 05:36:28', '2022-02-07 05:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `announcement_modals`
--

CREATE TABLE `announcement_modals` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_date` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement_modals`
--

INSERT INTO `announcement_modals` (`id`, `status`, `title`, `description`, `image`, `footer_text`, `expired_date`, `created_at`, `updated_at`) VALUES
(1, 0, 'GET UP TO 75% OFF', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Exercitationem, facere nesciunt doloremque nobis debitis sint?', 'uploads/website-images/announcement-2022-02-07-10-02-01-9027.jpg', 'Don\'t Show This Popup Again', 4, NULL, '2022-02-10 09:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `routing_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_details`
--

INSERT INTO `bank_details` (`id`, `user_id`, `account_name`, `account_number`, `bank_name`, `branch_name`, `routing_no`, `image`, `created_at`, `updated_at`) VALUES
(1, 4, 'Rizvi', '1234', 'Islami Bank', 'Dhkaka', '123', NULL, '2024-09-29 15:36:17', '2024-09-29 15:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `bank_payments`
--

CREATE TABLE `bank_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `account_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cash_on_delivery_status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_payments`
--

INSERT INTO `bank_payments` (`id`, `status`, `account_info`, `cash_on_delivery_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bank Name: Your bank name\r\nAccount Number:  Your bank account number\r\nRouting Number: Your bank routing number\r\nBranch: Your bank branch name', 1, NULL, '2022-01-27 05:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `banner_images`
--

CREATE TABLE `banner_images` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `header` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner_images`
--

INSERT INTO `banner_images` (`id`, `title`, `description`, `link`, `image`, `button_text`, `banner_location`, `status`, `header`, `created_at`, `updated_at`) VALUES
(1, 'Up To - 35% Off', 'Hot Deals', 'product', 'uploads/website-images/Mega-menu-2022-02-13-07-53-14-1062.png', 'Shop Now', 'Mega Menu Banner', 1, NULL, NULL, '2022-02-13 13:53:14'),
(2, 'Up To -20% Off', 'Hot Deals', 'product', 'uploads/website-images/banner--2022-02-10-10-24-47-2663.jpg', 'Shop Now', 'Home Page One Column Banner', 1, NULL, NULL, '2022-02-13 13:45:52'),
(3, 'Up To -35% Off', 'Hot Deals', 'product', 'uploads/website-images/banner-2022-02-06-03-42-16-1335.png', 'Shop Now', 'Home Page First Two Column Banner One', 1, NULL, NULL, '2024-09-30 18:19:19'),
(4, 'Up To -40% Off', 'Hot Deals', 'product', 'uploads/website-images/banner-2022-02-06-03-42-16-1434.png', 'Shop Now', 'Home Page First Two Column Banner Two', 1, NULL, NULL, '2022-02-13 13:46:01'),
(5, 'Up To -28% Off', 'Hot Deals', 'product', 'uploads/website-images/banner-2022-02-06-04-18-01-2862.jpg', 'Shop Now', 'Home Page Second Two Column Banner one', 1, NULL, NULL, '2022-02-13 13:46:15'),
(6, 'Up To -22% Off', 'Hot Deals', 'product', 'uploads/website-images/banner-2022-02-06-04-18-01-6995.jpg', 'Shop Now', 'Home Page Second Two Column Banner two', 1, NULL, NULL, '2022-02-13 13:46:15'),
(7, 'Up To -35% Off', 'Hot Deals', 'product', 'uploads/website-images/banner-2022-02-13-04-57-46-4114.jpg', 'Shop Now', 'Home Page Third Two Column Banner one', 1, NULL, NULL, '2022-02-13 13:46:27'),
(8, 'Up To -15% Off', 'Hot Deals', 'product', 'uploads/website-images/banner-2022-02-13-04-58-43-7437.jpg', 'Shop Now', 'Home Page Third Two Column Banner Two', 1, NULL, NULL, '2022-02-13 13:46:27'),
(9, 'This is Tittle', 'This is Description', 'product', 'uploads/website-images/banner-2022-02-06-04-24-44-6895.jpg', 'dd', 'Shopping cart bottom', 1, '', NULL, '2024-09-30 18:14:49'),
(10, 'This is Title', 'This is Description', 'product', 'uploads/website-images/banner-2022-02-06-04-25-59-9719.jpg', NULL, 'Shopping cart bottom', 0, NULL, NULL, '2022-02-13 13:47:23'),
(11, 'This is Tittle', 'This is Description', 'product', 'uploads/website-images/banner-2022-02-06-04-26-46-8505.jpg', 'dd', 'Campaign page', 1, '', NULL, '2022-02-13 13:47:31'),
(12, 'This is Tittle', 'This is Description', 'product', 'uploads/website-images/banner-2022-01-30-06-21-06-4562.png', 'dd', 'Campaign page', 0, '', NULL, '2022-02-13 13:47:31'),
(13, 'This is Tittle', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Shop Now', 'uploads/website-images/banner-2022-02-07-10-48-37-9226.jpg', 'dd', 'Login page', 0, 'Our Achievement', NULL, '2022-02-07 04:48:39'),
(14, 'Black Friday Sale', 'Up To -70% Off', 'product', 'uploads/website-images/banner-2022-02-06-04-24-02-9777.jpg', NULL, 'Product Detail', 0, NULL, NULL, '2024-09-30 18:16:10'),
(15, 'Default Profile Image', NULL, NULL, 'uploads/website-images/default-avatar-2022-02-07-10-10-46-1477.jpg', NULL, 'Default Profile Image', 0, NULL, NULL, '2022-02-07 04:10:50');

-- --------------------------------------------------------

--
-- Table structure for table `billing_addresses`
--

CREATE TABLE `billing_addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int DEFAULT '0',
  `state_id` int DEFAULT '0',
  `city_id` int DEFAULT '0',
  `zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billing_addresses`
--

INSERT INTO `billing_addresses` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `country_id`, `state_id`, `city_id`, `zip_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 4, 7, 53, NULL, '2022-01-30 09:56:12', '2024-09-29 16:15:53'),
(4, 4, 'Jose Larry', 'user@gmail.com', '458-854-8745', 'Florida City, FL, USA', 1, 2, 1, '45870', '2022-01-31 02:13:53', '2022-02-06 06:01:43'),
(5, 5, 'Daniel Paul', 'user@gmail.com', '123-874-6548', 'Florida City, FL, USA', 1, 2, 1, '52304', '2022-01-31 08:04:10', '2022-02-06 06:30:28'),
(6, 6, 'Robert James', 'seller@gmail.com', '458-854-8745', 'Los Angeles, CA, USA', 1, 1, 2, '9001', '2022-02-06 04:27:23', '2022-02-06 04:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int NOT NULL DEFAULT '0',
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `show_homepage` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `admin_id`, `title`, `slug`, `blog_category_id`, `image`, `banner_image`, `description`, `views`, `seo_title`, `seo_description`, `status`, `show_homepage`, `created_at`, `updated_at`) VALUES
(1, 1, 'The Best Delicious Coffee Shop In Bangkok China.', 'the-best-delicious-coffee-shop-in-bangkok-china', 4, 'uploads/custom-images/blog--2022-02-07-02-17-42-4747.jpg', 'uploads/custom-images/blog-banner-2022-02-11-03-22-01-3776.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 14, 'The Best Delicious Coffee Shop In Bangkok China.', 'The Best Delicious Coffee Shop In Bangkok China.', 1, 1, '2022-01-30 11:01:55', '2022-02-11 09:22:04'),
(2, 1, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has rdd', 'contrary-to-popular-belief-lorem-ipsum-is-not-simply-random-text-it-has-rdd', 4, 'uploads/custom-images/blog--2022-02-07-02-19-14-7102.jpg', 'uploads/custom-images/blog-banner-2022-02-11-03-22-18-4550.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 6, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has r', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has r', 1, 1, '2022-01-30 12:40:15', '2022-02-11 09:22:21'),
(4, 1, 'A Skin Cream That’s Proven To Work', 'a-skin-cream-thats-proven-to-work', 5, 'uploads/custom-images/blog--2022-02-07-02-21-28-8131.jpg', 'uploads/custom-images/blog-banner-2022-02-11-03-22-34-6221.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 0, 'A Skin Cream That’s Proven To Work', 'A Skin Cream That’s Proven To Work', 1, 1, '2022-02-07 08:21:34', '2022-02-11 09:22:37'),
(5, 1, 'America National Parks With Denver', 'america-national-parks-with-denver', 4, 'uploads/custom-images/blog--2022-02-07-02-23-41-8356.jpg', 'uploads/custom-images/blog-banner-2022-02-11-03-22-57-9861.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 24, 'America National Parks With Denver', 'America National Parks With Denver', 1, 1, '2022-02-07 08:23:47', '2022-02-17 14:21:13'),
(6, 1, 'A Seaside Reset In Laguna Beach', 'a-seaside-reset-in-laguna-beach', 2, 'uploads/custom-images/blog--2022-02-07-02-27-28-7281.jpg', 'uploads/custom-images/blog-banner-2022-02-11-03-23-12-1954.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p><p><br></p>', 0, 'A Seaside Reset In Laguna Beach', 'A Seaside Reset In Laguna Beach', 1, 0, '2022-02-07 08:27:35', '2022-02-11 09:23:15'),
(7, 1, 'Lorem Ipsum Is Simply Dummy Text Of The Printing', 'lorem-ipsum-is-simply-dummy-text-of-the-printing', 2, 'uploads/custom-images/blog--2022-02-07-02-31-07-4991.jpg', 'uploads/custom-images/blog-banner-2022-02-11-03-23-30-1549.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 1, 'Lorem Ipsum Is Simply Dummy Text Of The Printing', 'Lorem Ipsum Is Simply Dummy Text Of The Printing', 1, 0, '2022-02-07 08:31:13', '2022-02-17 11:17:20'),
(8, 1, 'List Of Benifits And Impressive Listeo Services', 'list-of-benifits-and-impressive-listeo-services', 2, 'uploads/custom-images/blog--2022-02-07-02-33-58-9203.jpg', 'uploads/custom-images/blog-banner-2022-02-11-03-23-46-7169.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 22, 'List Of Benifits And Impressive Listeo Services', 'List Of Benifits And Impressive Listeo Services', 1, 0, '2022-02-07 08:34:04', '2022-02-17 14:20:20'),
(9, 1, 'What People Says About Real Estate Properties', 'what-people-says-about-real-estate-properties', 3, 'uploads/custom-images/blog--2022-02-07-02-36-10-4099.jpg', 'uploads/custom-images/blog-banner-2022-02-11-03-24-02-7407.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 23, 'What People Says About Real Estate Properties', 'What People Says About Real Estate Properties', 1, 0, '2022-02-07 08:36:18', '2022-02-17 14:36:44'),
(10, 1, '9 Things I Love About Shaving My Head During Quarantine', '9-things-i-love-about-shaving-my-head-during-quarantine', 4, 'uploads/custom-images/blog--2022-02-07-02-39-06-7986.jpg', 'uploads/custom-images/blog-banner-2022-02-11-03-24-18-5178.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 4, '9 Things I Love About Shaving My Head During Quarantine', '9 Things I Love About Shaving My Head During Quarantine', 1, 0, '2022-02-07 08:39:11', '2022-02-11 09:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'electronics', 1, '2022-01-30 11:00:57', '2022-01-30 11:00:57'),
(2, 'Lifestyle', 'lifestyle', 1, '2022-02-07 08:15:32', '2022-02-07 08:15:32'),
(3, 'Food & Drink', 'food-drink', 1, '2022-02-07 08:15:46', '2022-02-07 08:15:46'),
(4, 'Children', 'children', 1, '2022-02-07 08:16:07', '2022-02-07 08:16:07'),
(5, 'Women', 'women', 1, '2022-02-07 08:20:05', '2022-02-07 08:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `blog_id`, `name`, `email`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(3, 9, 'John Doe', 'user@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2022-02-08 08:28:23', '2022-02-08 08:29:25'),
(4, 1, 'David Simmons', 'david@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2022-02-08 08:28:51', '2022-02-08 08:29:25'),
(5, 10, 'David Richard', 'rechard@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2022-02-08 08:29:09', '2022-02-08 08:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `is_featured` int NOT NULL DEFAULT '0',
  `is_top` int NOT NULL DEFAULT '0',
  `is_popular` int NOT NULL DEFAULT '0',
  `is_trending` int NOT NULL DEFAULT '0',
  `rating` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `logo`, `status`, `is_featured`, `is_top`, `is_popular`, `is_trending`, `rating`, `created_at`, `updated_at`) VALUES
(1, 'Canon', 'canon', 'uploads/custom-images/canon-2022-02-07-07-58-25-8373.jpg', 1, 0, 0, 0, 0, 5, '2022-01-30 09:40:56', '2022-02-12 09:49:33'),
(2, 'Hugo Boss', 'hugo-boss', 'uploads/custom-images/hugo-boss-2022-02-07-07-58-59-2503.jpg', 1, 0, 0, 0, 0, 3, '2022-01-30 10:02:22', '2022-02-07 01:58:59'),
(3, 'Adidas', 'adidas', 'uploads/custom-images/adidas-2022-02-07-07-59-11-8736.jpg', 1, 0, 0, 0, 0, 4, '2022-01-30 10:02:44', '2022-02-07 01:59:12'),
(4, 'Nike', 'nike', 'uploads/custom-images/nike-2022-02-07-07-59-25-8222.jpg', 1, 0, 0, 0, 0, 5, '2022-01-30 10:03:14', '2022-02-07 01:59:25'),
(6, 'Piaggio', 'piaggio-', 'uploads/custom-images/piaggio-2022-02-07-07-59-42-1464.jpg', 1, 0, 0, 0, 0, 5, '2022-01-30 10:10:59', '2022-02-07 01:59:43'),
(7, 'HP', 'hp', 'uploads/custom-images/hp-2022-02-07-07-59-57-5394.jpg', 1, 0, 0, 0, 0, 5, '2022-02-06 01:34:50', '2022-02-07 01:59:57'),
(8, 'Asus', 'asus', 'uploads/custom-images/asus-2022-02-08-09-32-28-5900.jpg', 1, 0, 0, 0, 0, 4, '2022-02-06 01:35:49', '2022-02-08 03:32:35'),
(9, 'Lenovo', 'lenovo-laptop', 'uploads/custom-images/lenovo-2022-02-08-09-33-54-2980.jpg', 1, 0, 0, 0, 0, 4, '2022-02-06 01:36:12', '2022-02-08 03:33:55'),
(11, 'Intel', 'intel', 'uploads/custom-images/intel-2022-02-08-09-29-45-6413.jpg', 1, 0, 0, 0, 0, 5, '2022-02-06 02:28:46', '2022-02-08 03:29:52'),
(12, 'A4Tech', 'a4tech', 'uploads/custom-images/a4tech-2022-02-07-08-09-30-3624.jpg', 1, 0, 0, 0, 0, 5, '2022-02-06 02:41:18', '2022-02-07 02:09:32'),
(13, 'Sony', 'sony', 'uploads/custom-images/sony-2022-02-08-09-26-22-5316.jpg', 1, 0, 0, 0, 0, 5, '2022-02-06 03:00:51', '2022-02-08 03:26:23'),
(14, 'Suzuki', 'suzuki', 'uploads/custom-images/suzuki-2022-02-08-09-28-28-4764.jpg', 1, 0, 0, 0, 0, 4, '2022-02-06 03:51:24', '2022-02-08 03:28:35'),
(15, 'Samsung', 'samsung', 'uploads/custom-images/samsung-2022-02-08-09-27-05-9288.jpg', 1, 0, 0, 0, 0, 5, '2022-02-06 06:07:50', '2022-02-08 03:27:08');

-- --------------------------------------------------------

--
-- Table structure for table `breadcrumb_images`
--

CREATE TABLE `breadcrumb_images` (
  `id` bigint UNSIGNED NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_type` int NOT NULL DEFAULT '1',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `breadcrumb_images`
--

INSERT INTO `breadcrumb_images` (`id`, `location`, `image_type`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Brand Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-00-6529.jpg', NULL, '2022-02-11 09:19:03'),
(2, 'Cart Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-13-2295.jpg', NULL, '2022-02-11 09:19:16'),
(3, 'Campaign Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-26-4555.jpg', NULL, '2022-02-11 09:19:28'),
(4, 'FAQ page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-38-5297.jpg', NULL, '2022-02-11 09:19:40'),
(5, 'User Authentication', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-51-4946.jpg', NULL, '2022-02-11 09:19:53'),
(6, 'Compare Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-02-1928.jpg', NULL, '2022-02-11 09:20:04'),
(7, 'Order Tracking Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-16-5029.jpg', NULL, '2022-02-11 09:20:18'),
(8, 'Vendor Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-28-1461.jpg', NULL, '2022-02-11 09:20:30'),
(9, 'Shop Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-39-4557.jpg', NULL, '2022-02-11 09:20:41'),
(10, 'Blog page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-51-3046.jpg', NULL, '2022-02-11 09:20:54'),
(11, 'Flash Deal Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-21-04-8636.jpg', NULL, '2022-02-11 09:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer` double NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `show_homepage` int NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `image`, `name`, `slug`, `title`, `offer`, `start_date`, `end_date`, `show_homepage`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uploads/custom-images/campaign--2022-02-07-08-17-57-4847.jpg', 'Happy New Year', 'happy-new-year', 'Up To -35% Off', 35, '2024-07-12 13:30:00', '2024-07-27 13:30:00', 0, 1, '2022-01-30 11:07:55', '2024-09-30 18:41:44'),
(2, 'uploads/custom-images/campaign--2022-02-07-08-19-03-8003.jpg', 'Black Friday', 'black-friday', 'Up To -31% Off', 41, '2024-09-29 00:41:00', '2024-10-25 00:41:00', 1, 1, '2022-01-30 20:28:49', '2024-09-30 18:41:44'),
(3, 'uploads/custom-images/campaign--2022-02-07-08-19-56-3751.jpg', 'Happy New Year 2024', 'happy-new-year-2024', 'Up To -30% Off', 30, '2024-09-30 00:42:00', '2024-11-29 00:42:00', 0, 1, '2022-01-30 20:41:43', '2024-09-30 18:42:50'),
(4, 'uploads/custom-images/campaign--2022-02-07-08-23-24-8664.jpg', 'Happy New Year 2022', 'happy-new-year-2022', 'Up To - 20% Off', 20, '2024-09-01 00:42:00', '2026-02-25 00:43:00', 0, 1, '2022-01-31 02:46:12', '2024-09-30 18:43:07');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_products`
--

CREATE TABLE `campaign_products` (
  `id` bigint UNSIGNED NOT NULL,
  `campaign_id` int NOT NULL,
  `product_id` int NOT NULL,
  `show_homepage` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `campaign_products`
--

INSERT INTO `campaign_products` (`id`, `campaign_id`, `product_id`, `show_homepage`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2022-01-30 11:08:17', '2022-01-30 11:08:17'),
(2, 2, 3, 1, 1, '2022-01-31 07:03:31', '2022-01-31 07:03:31'),
(3, 2, 4, 1, 1, '2022-01-31 07:03:39', '2022-01-31 07:03:39'),
(4, 4, 8, 1, 1, '2022-01-31 07:31:42', '2022-01-31 07:31:42'),
(5, 4, 9, 1, 1, '2022-01-31 07:31:56', '2022-01-31 07:32:05'),
(6, 4, 7, 1, 1, '2022-01-31 07:32:02', '2022-01-31 07:32:05'),
(8, 1, 22, 1, 1, '2022-02-08 10:05:36', '2022-02-08 10:06:26'),
(9, 1, 16, 1, 1, '2022-02-08 10:05:43', '2022-02-08 10:06:27'),
(10, 1, 32, 1, 1, '2022-02-08 10:05:51', '2022-02-08 10:06:28'),
(11, 1, 17, 1, 1, '2022-02-08 10:06:06', '2022-02-08 10:06:29'),
(12, 1, 29, 1, 1, '2022-02-08 10:17:31', '2022-02-08 10:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `is_featured` int NOT NULL DEFAULT '0',
  `is_top` int NOT NULL DEFAULT '0',
  `is_popular` int NOT NULL DEFAULT '0',
  `is_trending` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_charge` decimal(10,2) DEFAULT NULL,
  `city_id` bigint UNSIGNED DEFAULT NULL,
  `commission_rate` decimal(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `status`, `is_featured`, `is_top`, `is_popular`, `is_trending`, `created_at`, `updated_at`, `delivery_charge`, `city_id`, `commission_rate`) VALUES
(1, 'Electronics', 'electronics', 'uploads/custom-images/oshin-img-2024-07-12-02-15-44-7863.jpg', 1, 0, 1, 0, 0, '2022-01-30 09:39:07', '2024-07-19 06:21:33', 10.00, 1, 1.00),
(2, 'Mobile', 'mobile', 'fas fa-address-card', 1, 0, 0, 0, 0, '2022-01-30 09:39:21', '2022-01-30 09:39:21', 100.00, NULL, 0.00),
(3, 'Television', 'television', 'fab fa-android', 1, 0, 0, 0, 0, '2022-01-30 09:39:39', '2022-01-30 09:39:39', 120.00, NULL, 0.00),
(4, 'Bike', 'bike', 'fab fa-accessible-icon', 1, 0, 0, 0, 0, '2022-01-30 10:06:39', '2022-01-30 10:06:39', 90.00, NULL, 0.00),
(5, 'Men\'s Fashion', 'mens-fashion', 'far fa-address-card', 1, 0, 0, 0, 0, '2022-01-30 10:06:54', '2022-02-06 08:05:40', 80.00, NULL, 0.00),
(6, 'Women\'s Fashion', 'womens-fashion', 'fas fa-adjust', 1, 0, 0, 0, 0, '2022-01-30 10:07:11', '2022-02-06 08:06:04', 70.00, NULL, 0.00),
(7, 'Home and Lifestyle', 'home-and-lifestyle', 'fas fa-warehouse', 1, 0, 0, 0, 0, '2022-02-06 07:12:24', '2022-02-06 07:12:24', 60.00, NULL, 0.00),
(8, 'Babies and Toys', 'babies-and-toys', 'fas fa-volleyball-ball', 1, 0, 0, 0, 0, '2022-02-06 08:21:36', '2022-02-06 08:21:36', 50.00, NULL, 0.00),
(9, 'Electronics Accessories', 'electronics-accessories', 'fab fa-avianex', 1, 0, 0, 0, 0, '2022-02-06 08:36:39', '2022-02-06 08:36:39', 55.00, NULL, 0.00),
(10, 'Vehicles & Accessories', 'vehicles-accessories', 'fas fa-ambulance', 1, 0, 0, 0, 0, '2022-02-06 08:53:55', '2022-02-13 04:04:53', 45.00, NULL, 0.00),
(12, 'test category', 'test-category', 'fa fa-edit', 1, 0, 0, 0, 0, '2022-04-14 03:16:31', '2022-04-14 03:16:31', 40.00, NULL, 0.00),
(13, 'test category 2', 'test-category-2', 'fa fa-edit', 1, 0, 0, 0, 0, '2022-04-14 03:16:56', '2022-04-14 03:16:56', 12.00, NULL, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `child_categories`
--

CREATE TABLE `child_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `sub_category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission_rate` decimal(10,2) DEFAULT NULL,
  `city_id` bigint UNSIGNED DEFAULT NULL,
  `delivery_charge` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `child_categories`
--

INSERT INTO `child_categories` (`id`, `category_id`, `sub_category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `commission_rate`, `city_id`, `delivery_charge`) VALUES
(1, 1, 1, 'Canon', 'DSLR', 1, '2022-01-30 09:40:24', '2022-01-30 09:40:35', NULL, NULL, NULL),
(2, 5, 5, 'Blue Tshirt', 'blue-tshirt', 1, '2022-01-30 10:09:53', '2022-01-30 10:09:53', NULL, NULL, NULL),
(3, 6, 6, 'Fair and Lovely', 'fair-and-lovely', 1, '2022-01-30 10:10:11', '2022-02-07 02:16:43', NULL, NULL, NULL),
(4, 1, 7, 'Lenovo Laptop', 'lenovo-laptop', 1, '2022-02-06 01:39:22', '2022-02-06 01:39:22', NULL, NULL, NULL),
(5, 1, 7, 'Asus Laptop', 'asus-laptop', 1, '2022-02-06 01:39:41', '2022-02-06 01:39:41', NULL, NULL, NULL),
(6, 1, 7, 'HP Laptop', 'hp-laptop', 1, '2022-02-06 01:39:57', '2022-02-06 01:39:57', NULL, NULL, NULL),
(7, 1, 9, 'Mouse and Keyboard', 'mouse-and-keyboard', 1, '2022-02-06 02:40:31', '2022-02-06 02:40:31', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `country_state_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `country_state_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'BAGERHAT SADAR', 'bagerhat-sadar', 1, '2022-01-30 09:29:19', '2024-08-15 23:06:30'),
(2, 1, 'CHITALMARI', 'chitalmari', 1, '2022-01-30 09:29:29', '2024-08-15 23:06:58'),
(4, 1, 'FAKIRHAT', 'fakirhat', 1, '2022-02-06 04:18:49', '2024-08-15 23:07:21'),
(5, 1, 'KACHUA', 'kachua', 1, '2022-02-06 04:19:56', '2024-08-15 23:07:48'),
(6, 1, 'MOLLAHAT', 'mollahat', 1, '2022-02-06 04:21:08', '2024-08-15 23:08:08'),
(7, 1, 'MONGLA', 'mongla', 1, '2022-02-06 04:21:26', '2024-08-15 23:08:28'),
(8, 1, 'MORRELGANJ', 'morrelganj', 1, '2022-02-06 04:22:21', '2024-08-15 23:08:55'),
(9, 1, 'RAMPAL', 'rampal', 1, '2022-02-06 04:22:44', '2024-08-15 23:09:18'),
(10, 1, 'SARANKHOLA', 'sarankhola', 1, '2022-02-06 04:23:12', '2024-08-15 23:10:00'),
(11, 2, 'ALIKADAM', 'alikadam', 1, '2022-02-06 04:23:29', '2024-08-15 23:11:21'),
(12, 2, 'BANDARBAN SADAR', 'bandarban-sadar', 1, '2024-06-30 14:07:10', '2024-08-15 23:11:56'),
(13, 2, 'LAMA', 'lama', 1, '2024-08-15 23:12:28', '2024-08-15 23:12:28'),
(14, 2, 'NAIKHONGCHHARI', 'naikhongchhari', 1, '2024-08-15 23:12:55', '2024-08-15 23:12:55'),
(15, 2, 'ROWANGCHHARI', 'rowangchhari', 1, '2024-08-15 23:13:18', '2024-08-15 23:13:18'),
(16, 2, 'RUMA', 'ruma', 1, '2024-08-15 23:13:36', '2024-08-15 23:13:36'),
(17, 2, 'THANCHI', 'thanchi', 1, '2024-08-15 23:13:52', '2024-08-15 23:13:52'),
(18, 3, 'AMTALI', 'amtali', 1, '2024-08-15 23:30:10', '2024-08-15 23:30:10'),
(19, 3, 'BAMNA', 'bamna', 1, '2024-08-15 23:30:26', '2024-08-15 23:30:26'),
(20, 3, 'BARGUNA SADAR', 'barguna-sadar', 1, '2024-08-15 23:30:41', '2024-08-15 23:30:41'),
(21, 3, 'BETAGI', 'betagi', 1, '2024-08-15 23:30:55', '2024-08-15 23:30:55'),
(22, 3, 'PATHARGHATA', 'patharghata', 1, '2024-08-15 23:31:13', '2024-08-15 23:31:13'),
(23, 3, 'TALTALI', 'taltali', 1, '2024-08-15 23:31:28', '2024-08-15 23:31:28'),
(24, 4, 'AGAILJHARA', 'agailjhara', 1, '2024-08-15 23:32:32', '2024-08-15 23:32:32'),
(25, 4, 'BABUGANJ', 'babuganj', 1, '2024-08-15 23:32:47', '2024-08-15 23:32:47'),
(26, 4, 'BAKERGANJ', 'bakerganj', 1, '2024-08-15 23:33:02', '2024-08-15 23:33:02'),
(27, 4, 'BANARI PARA', 'banari-para', 1, '2024-08-15 23:33:19', '2024-08-15 23:33:19'),
(28, 4, 'GAURNADI', 'gaurnadi', 1, '2024-08-15 23:33:34', '2024-08-15 23:33:34'),
(29, 4, 'HIZLA', 'hizla', 1, '2024-08-15 23:33:48', '2024-08-15 23:33:48'),
(30, 4, 'BARISAL SADAR', 'barisal-sadar', 1, '2024-08-15 23:34:22', '2024-08-15 23:34:22'),
(31, 4, 'MHENDIGANJ', 'mhendiganj', 1, '2024-08-15 23:34:37', '2024-08-15 23:34:37'),
(32, 4, 'MULADI', 'muladi', 1, '2024-08-15 23:34:55', '2024-08-15 23:34:55'),
(33, 4, 'WAZIRPUR', 'wazirpur', 1, '2024-08-15 23:35:06', '2024-08-15 23:35:06'),
(34, 5, 'BHOLA SADAR', 'bhola-sadar', 1, '2024-08-15 23:35:57', '2024-08-15 23:35:57'),
(35, 5, 'BURHANUDDIN', 'burhanuddin', 1, '2024-08-15 23:36:12', '2024-08-15 23:36:12'),
(36, 5, 'CHAR FASSON', 'char-fasson', 1, '2024-08-15 23:36:27', '2024-08-15 23:36:27'),
(37, 5, 'DAULAT KHAN', 'daulat-khan', 1, '2024-08-15 23:36:43', '2024-08-15 23:36:43'),
(38, 5, 'LALMOHAN', 'lalmohan', 1, '2024-08-15 23:36:59', '2024-08-15 23:36:59'),
(39, 5, 'MANPURA', 'manpura', 1, '2024-08-15 23:37:14', '2024-08-15 23:37:14'),
(40, 5, 'TAZUMUDDIN', 'tazumuddin', 1, '2024-08-15 23:37:29', '2024-08-15 23:37:29'),
(41, 6, 'ADAMDIGHI', 'adamdighi', 1, '2024-08-15 23:38:24', '2024-08-15 23:38:24'),
(42, 6, 'BOGRA SADAR', 'bogra-sadar', 1, '2024-08-15 23:38:41', '2024-08-15 23:38:41'),
(43, 6, 'DHUNAT', 'dhunat', 1, '2024-08-15 23:39:03', '2024-08-15 23:39:03'),
(44, 6, 'DHUPCHANCHIA', 'dhupchanchia', 1, '2024-08-15 23:39:26', '2024-08-15 23:39:26'),
(45, 6, 'GABTALI', 'gabtali', 1, '2024-08-15 23:39:43', '2024-08-15 23:39:43'),
(46, 6, 'KAHALOO', 'kahaloo', 1, '2024-08-15 23:40:00', '2024-08-15 23:40:00'),
(47, 6, 'NANDIGRAM', 'nandigram', 1, '2024-08-15 23:40:17', '2024-08-15 23:40:17'),
(48, 6, 'SARIAKANDI', 'sariakandi', 1, '2024-08-15 23:40:34', '2024-08-15 23:40:34'),
(49, 6, 'SHAJAHANPUR', 'shajahanpur', 1, '2024-08-15 23:40:51', '2024-08-15 23:40:51'),
(50, 6, 'SHERPUR', 'sherpur', 1, '2024-08-15 23:41:08', '2024-08-15 23:41:08'),
(51, 6, 'SHIBGANJ', 'shibganj', 1, '2024-08-15 23:41:26', '2024-08-15 23:41:26'),
(52, 6, 'SONATOLA', 'sonatola', 1, '2024-08-15 23:41:44', '2024-08-15 23:41:44'),
(53, 7, 'AKHAURA', 'akhaura', 1, '2024-08-16 04:07:49', '2024-08-16 04:07:49'),
(54, 7, 'BANCHHARAMPUR', 'banchharampur', 1, '2024-08-16 04:08:09', '2024-08-16 04:08:09'),
(55, 7, 'BIJOYNAGAR', 'bijoynagar', 1, '2024-08-16 04:08:28', '2024-08-16 04:08:28'),
(56, 7, 'BRAHMANBARIA SADAR', 'brahmanbaria-sadar', 1, '2024-08-16 04:08:48', '2024-08-16 04:08:48'),
(57, 7, 'ASHUGANJ', 'ashuganj', 1, '2024-08-16 04:09:04', '2024-08-16 04:09:04'),
(58, 7, 'KASBA', 'kasba', 1, '2024-08-16 04:09:24', '2024-08-16 04:09:24'),
(59, 7, 'NABINAGAR', 'nabinagar', 1, '2024-08-16 04:09:39', '2024-08-16 04:09:39'),
(60, 7, 'NASIRNAGAR', 'nasirnagar', 1, '2024-08-16 04:09:55', '2024-08-16 04:09:55'),
(61, 7, 'SARAIL', 'sarail', 1, '2024-08-16 04:10:12', '2024-08-16 04:10:12'),
(62, 8, 'CHANDPUR SADAR', 'chandpur-sadar', 1, '2024-08-16 04:10:57', '2024-08-16 04:10:57'),
(63, 8, 'FARIDGANJ', 'faridganj', 1, '2024-08-16 04:11:13', '2024-08-16 04:11:13'),
(64, 8, 'HAIM CHAR', 'haim-char', 1, '2024-08-16 04:11:50', '2024-08-16 04:11:50'),
(65, 8, 'HAJIGANJ', 'hajiganj', 1, '2024-08-16 04:15:09', '2024-08-16 04:15:09'),
(66, 8, 'MATLAB DAKSHIN', 'matlab-dakshin', 1, '2024-08-16 04:21:00', '2024-08-16 04:21:00'),
(67, 8, 'MATLAB UTTAR', 'matlab-uttar', 1, '2024-08-16 04:21:20', '2024-08-16 04:21:20'),
(68, 8, 'SHAHRASTI', 'shahrasti', 1, '2024-08-16 04:21:39', '2024-08-16 04:21:39'),
(69, 9, 'BHOLAHAT', 'bholahat', 1, '2024-08-16 04:22:40', '2024-08-16 04:22:40'),
(70, 9, 'GOMASTAPUR', 'gomastapur', 1, '2024-08-16 04:23:01', '2024-08-16 04:23:01'),
(71, 9, 'NACHOLE', 'nachole', 1, '2024-08-16 04:23:20', '2024-08-16 04:23:20'),
(72, 9, 'CHAPAI NABABGANJ SADAR', 'chapai-nababganj-sadar', 1, '2024-08-16 04:23:40', '2024-08-16 04:23:40'),
(73, 10, 'ANOWARA', 'anowara', 1, '2024-08-16 04:25:24', '2024-08-16 04:25:24'),
(74, 10, 'BAYEJID BOSTAMI', 'bayejid-bostami', 1, '2024-08-16 04:25:43', '2024-08-16 04:25:43'),
(75, 10, 'BANSHKHALI', 'banshkhali', 1, '2024-08-16 04:26:03', '2024-08-16 04:26:03'),
(76, 10, 'BAKALIA', 'bakalia', 1, '2024-08-16 04:26:26', '2024-08-16 04:26:26'),
(77, 10, 'BOALKHALI', 'boalkhali', 1, '2024-08-16 04:26:43', '2024-08-16 04:26:43'),
(78, 10, 'CHANDANAISH', 'chandanaish', 1, '2024-08-16 04:27:02', '2024-08-16 04:27:02'),
(79, 10, 'CHANDGAON', 'chandgaon', 1, '2024-08-16 04:27:24', '2024-08-16 04:27:24'),
(80, 10, 'CHITTAGONG PORT', 'chittagong-port', 1, '2024-08-16 04:27:43', '2024-08-16 04:27:43'),
(81, 10, 'DOUBLE MOORING', 'double-mooring', 1, '2024-08-16 04:28:04', '2024-08-16 04:28:04'),
(82, 10, 'FATIKCHHARI', 'fatikchhari', 1, '2024-08-16 04:28:21', '2024-08-16 04:28:21'),
(83, 10, 'HALISHAHAR', 'halishahar', 1, '2024-08-16 04:28:38', '2024-08-16 04:28:38'),
(84, 10, 'HATHAZARI', 'hathazari', 1, '2024-08-16 04:28:57', '2024-08-16 04:28:57'),
(85, 10, 'KOTWALI', 'kotwali', 1, '2024-08-16 04:29:17', '2024-08-16 04:29:17'),
(86, 10, 'KHULSHI', 'khulshi', 1, '2024-08-16 04:29:33', '2024-08-16 04:29:33'),
(87, 10, 'LOHAGARA', 'lohagara', 1, '2024-08-16 04:29:53', '2024-08-16 04:29:53'),
(88, 10, 'MIRSHARAI', 'mirsharai', 1, '2024-08-16 04:30:13', '2024-08-16 04:30:13'),
(89, 10, 'PAHARTALI', 'pahartali', 1, '2024-08-16 04:30:29', '2024-08-16 04:30:29'),
(90, 10, 'PANCHLAISH', 'panchlaish', 1, '2024-08-16 04:30:48', '2024-08-16 04:30:48'),
(91, 10, 'PATIYA', 'patiya', 1, '2024-08-16 04:31:04', '2024-08-16 04:31:04'),
(92, 10, 'PATENGA', 'patenga', 1, '2024-08-16 04:31:19', '2024-08-16 04:31:19'),
(93, 10, 'RANGUNIA', 'rangunia', 1, '2024-08-16 04:31:33', '2024-08-16 04:31:33'),
(94, 10, 'RAOZAN', 'raozan', 1, '2024-08-16 04:31:48', '2024-08-16 04:31:48'),
(95, 10, 'SANDWIP', 'sandwip', 1, '2024-08-16 04:32:08', '2024-08-16 04:32:08'),
(96, 10, 'SATKANIA', 'satkania', 1, '2024-08-16 04:32:25', '2024-08-16 04:32:25'),
(97, 10, 'SITAKUNDA', 'sitakunda', 1, '2024-08-16 04:32:40', '2024-08-16 04:32:40'),
(98, 11, 'ALAMDANGA', 'alamdanga', 1, '2024-08-16 04:33:27', '2024-08-16 04:33:27'),
(99, 11, 'CHUADANGA SADAR', 'chuadanga-sadar', 1, '2024-08-16 04:33:44', '2024-08-16 04:33:44'),
(100, 11, 'DAMURHUDA', 'damurhuda', 1, '2024-08-16 04:34:00', '2024-08-16 04:34:00'),
(101, 11, 'JIBAN NAGAR', 'jiban-nagar', 1, '2024-08-16 04:34:16', '2024-08-16 04:34:16'),
(102, 12, 'BARURA', 'barura', 1, '2024-08-16 04:35:14', '2024-08-16 04:35:14'),
(103, 12, 'BRAHMAN PARA', 'brahman-para', 1, '2024-08-16 04:35:36', '2024-08-16 04:35:36'),
(104, 12, 'BURICHANG', 'burichang', 1, '2024-08-16 04:35:54', '2024-08-16 04:35:54'),
(105, 12, 'CHANDINA', 'chandina', 1, '2024-08-16 04:36:17', '2024-08-16 04:36:17'),
(106, 12, 'CHAUDDAGRAM', 'chauddagram', 1, '2024-08-16 04:36:36', '2024-08-16 04:36:36'),
(107, 12, 'COMILLA SADAR DAKSHIN', 'comilla-sadar-dakshin', 1, '2024-08-16 04:37:29', '2024-08-16 04:37:29'),
(108, 12, 'DAUDKANDI', 'daudkandi', 1, '2024-08-16 04:37:47', '2024-08-16 04:37:47'),
(109, 12, 'DEBIDWAR', 'debidwar', 1, '2024-08-16 04:38:04', '2024-08-16 04:38:04'),
(110, 12, 'HOMNA', 'homna', 1, '2024-08-16 04:38:22', '2024-08-16 04:38:22'),
(111, 12, 'COMILLA ADARSHA SADAR', 'comilla-adarsha-sadar', 1, '2024-08-16 04:38:42', '2024-08-16 04:38:42'),
(112, 12, 'LAKSAM', 'laksam', 1, '2024-08-16 04:39:00', '2024-08-16 04:39:00'),
(113, 12, 'MANOHARGANJ', 'manoharganj', 1, '2024-08-16 04:39:21', '2024-08-16 04:39:21'),
(114, 12, 'MEGHNA', 'meghna', 1, '2024-08-16 04:39:40', '2024-08-16 04:39:40'),
(115, 12, 'MURADNAGAR', 'muradnagar', 1, '2024-08-16 04:39:57', '2024-08-16 04:39:57'),
(116, 12, 'NANGALKOT', 'nangalkot', 1, '2024-08-16 04:40:15', '2024-08-16 04:40:15'),
(117, 12, 'TITAS', 'titas', 1, '2024-08-16 04:40:32', '2024-08-16 04:40:32'),
(118, 13, 'CHAKARIA', 'chakaria', 1, '2024-08-16 04:41:22', '2024-08-16 04:41:22'),
(119, 13, 'COX\'S BAZAR SADAR', 'coxs-bazar-sadar', 1, '2024-08-16 04:41:41', '2024-08-16 04:41:41'),
(120, 13, 'KUTUBDIA', 'kutubdia', 1, '2024-08-16 04:42:03', '2024-08-16 04:42:03'),
(121, 13, 'MAHESHKHALI', 'maheshkhali', 1, '2024-08-16 04:42:24', '2024-08-16 04:42:24'),
(122, 13, 'PEKUA', 'pekua', 1, '2024-08-16 04:42:41', '2024-08-16 04:42:41'),
(123, 13, 'RAMU', 'ramu', 1, '2024-08-16 04:43:00', '2024-08-16 04:43:00'),
(124, 13, 'TEKNAF', 'teknaf', 1, '2024-08-16 04:43:20', '2024-08-16 04:43:20'),
(125, 13, 'UKHIA', 'ukhia', 1, '2024-08-16 04:43:40', '2024-08-16 04:43:40'),
(126, 14, 'ADABOR', 'adabor', 1, '2024-08-16 04:44:48', '2024-08-16 04:44:48'),
(127, 14, 'BADDA', 'badda', 1, '2024-08-16 04:45:04', '2024-08-16 05:05:30'),
(130, 14, 'BANGSHAL', 'bangshal', 1, '2024-08-16 04:48:52', '2024-08-16 04:48:52'),
(131, 14, 'BIMAN BANDAR', 'biman-bandar', 1, '2024-08-16 04:49:44', '2024-08-16 04:49:44'),
(133, 14, 'BANANI', 'banani', 1, '2024-08-16 04:51:19', '2024-08-16 04:51:19'),
(134, 14, 'CANTONMENT', 'cantonment', 1, '2024-08-16 04:51:45', '2024-08-16 04:51:45'),
(135, 14, 'CHAK BAZAR', 'chak-bazar', 1, '2024-08-16 04:52:03', '2024-08-16 04:52:03'),
(136, 14, 'DAKSHINKHAN', 'dakshinkhan', 1, '2024-08-16 04:52:24', '2024-08-16 04:52:24'),
(137, 14, 'DARUS SALAM', 'darus-salam', 1, '2024-08-16 04:52:39', '2024-08-16 04:52:39'),
(138, 14, 'DEMRA', 'demra', 1, '2024-08-16 04:52:54', '2024-08-16 04:52:54'),
(139, 14, 'DHAMRAI', 'dhamrai', 1, '2024-08-16 04:53:12', '2024-08-16 04:53:12'),
(140, 14, 'DHANMONDI', 'dhanmondi', 1, '2024-08-16 04:53:41', '2024-08-16 04:53:41'),
(141, 14, 'DOHAR', 'dohar', 1, '2024-08-16 04:54:04', '2024-08-16 04:54:04'),
(142, 14, 'BHASAN TEK', 'bhasan-tek', 1, '2024-08-16 05:00:48', '2024-08-16 05:00:48'),
(143, 14, 'BHATARA', 'bhatara', 1, '2024-08-16 05:01:09', '2024-08-16 05:01:09'),
(144, 14, 'GENDARIA', 'gendaria', 1, '2024-08-16 05:01:27', '2024-08-16 05:01:27'),
(145, 14, 'GULSHAN', 'gulshan', 1, '2024-08-16 05:01:49', '2024-08-16 05:01:49'),
(146, 14, 'HAZARIBAGH', 'hazaribagh', 1, '2024-08-16 05:02:21', '2024-08-16 05:02:21'),
(147, 14, 'JATRABARI', 'jatrabari', 1, '2024-08-16 05:02:37', '2024-08-16 05:02:37'),
(148, 14, 'KAFRUL', 'kafrul', 1, '2024-08-16 05:03:14', '2024-08-16 05:03:14'),
(149, 14, 'KADAMTALI', 'kadamtali', 1, '2024-08-16 05:03:48', '2024-08-16 05:03:48'),
(150, 14, 'KALABAGAN', 'kalabagan', 1, '2024-08-16 05:09:40', '2024-08-16 05:09:40'),
(151, 14, 'KAMRANGIR CHAR', 'kamrangir-char', 1, '2024-08-16 05:09:59', '2024-08-16 05:09:59'),
(152, 14, 'KHILGAON', 'khilgaon', 1, '2024-08-16 05:10:17', '2024-08-16 05:10:17'),
(153, 14, 'KHILKHET', 'khilkhet', 1, '2024-08-16 05:10:33', '2024-08-16 05:10:33'),
(154, 14, 'KERANIGANJ', 'keraniganj', 1, '2024-08-16 05:11:03', '2024-08-16 05:11:03'),
(155, 14, 'LALBAGH', 'lalbagh', 1, '2024-08-16 05:32:53', '2024-08-16 05:32:53'),
(156, 14, 'MIRPUR', 'mirpur', 1, '2024-08-16 05:39:08', '2024-08-16 05:39:08'),
(157, 14, 'MOHAMMADPUR', 'mohammadpur', 1, '2024-08-16 05:40:03', '2024-08-16 05:40:03'),
(158, 14, 'MOTIJHEEL', 'motijheel', 1, '2024-08-16 05:40:20', '2024-08-16 05:40:20'),
(159, 14, 'MUGDA PARA', 'mugda-para', 1, '2024-08-16 05:40:40', '2024-08-16 05:40:40'),
(160, 14, 'NAWABGANJ', 'nawabganj', 1, '2024-08-16 05:41:24', '2024-08-16 05:41:24'),
(161, 14, 'NEW MARKET', 'new-market', 1, '2024-08-16 05:41:43', '2024-08-16 05:41:43'),
(162, 14, 'PALLABI', 'pallabi', 1, '2024-08-16 05:42:04', '2024-08-16 05:42:04'),
(163, 14, 'PALTAN', 'paltan', 1, '2024-08-16 05:42:21', '2024-08-16 05:42:21'),
(164, 14, 'RAMNA', 'ramna', 1, '2024-08-16 05:43:56', '2024-08-16 05:43:56'),
(165, 14, 'RAMPURA', 'rampura', 1, '2024-08-16 05:44:18', '2024-08-16 05:44:18'),
(166, 14, 'SABUJBAGH', 'sabujbagh', 1, '2024-08-16 05:44:37', '2024-08-16 05:44:37'),
(167, 14, 'RUPNAGAR', 'rupnagar', 1, '2024-08-16 05:45:52', '2024-08-16 05:45:52'),
(168, 14, 'SAVAR', 'savar', 1, '2024-08-16 05:46:09', '2024-08-16 05:46:09'),
(169, 14, 'SHAHJAHANPUR', 'shahjahanpur', 1, '2024-08-16 05:46:24', '2024-08-16 05:46:24'),
(170, 14, 'SHAH ALI', 'shah-ali', 1, '2024-08-16 05:48:58', '2024-08-16 05:48:58'),
(171, 14, 'SHAHBAGH', 'shahbagh', 1, '2024-08-16 05:49:31', '2024-08-16 05:49:31'),
(172, 14, 'SHYAMPUR', 'shyampur', 1, '2024-08-16 05:49:51', '2024-08-16 05:49:51'),
(173, 14, 'SHER-E-BANGLA NAGAR', 'sher-e-bangla-nagar', 1, '2024-08-16 05:50:08', '2024-08-16 05:50:08'),
(174, 14, 'SUTRAPUR', 'sutrapur', 1, '2024-08-16 05:50:35', '2024-08-16 05:50:35'),
(175, 14, 'TEJGAON', 'tejgaon', 1, '2024-08-16 05:50:51', '2024-08-16 05:50:51'),
(176, 14, 'TEJGAON IND. AREA', 'tejgaon-ind-area', 1, '2024-08-16 05:51:13', '2024-08-16 05:51:13'),
(177, 14, 'TURAG', 'turag', 1, '2024-08-16 05:51:29', '2024-08-16 05:51:29'),
(178, 14, 'UTTARA  PASCHIM', 'uttara-paschim', 1, '2024-08-16 05:51:45', '2024-08-16 05:51:45'),
(179, 14, 'UTTARA  PURBA', 'uttara-purba', 1, '2024-08-16 05:52:00', '2024-08-16 05:52:00'),
(180, 14, 'UTTAR KHAN', 'uttar-khan', 1, '2024-08-16 05:52:22', '2024-08-16 05:52:22'),
(181, 14, 'WARI', 'wari', 1, '2024-08-16 05:52:38', '2024-08-16 05:52:38'),
(182, 15, 'BIRAMPUR', 'birampur', 1, '2024-08-16 05:54:34', '2024-08-16 05:54:34'),
(183, 15, 'BIRGANJ', 'birganj', 1, '2024-08-16 05:56:08', '2024-08-16 05:56:08'),
(184, 15, 'BIRAL', 'biral', 1, '2024-08-16 05:56:26', '2024-08-16 05:56:26'),
(185, 15, 'BOCHAGANJ', 'bochaganj', 1, '2024-08-16 05:56:44', '2024-08-16 05:56:44'),
(186, 15, 'CHIRIRBANDAR', 'chirirbandar', 1, '2024-08-16 05:57:01', '2024-08-16 05:57:01'),
(187, 15, 'FULBARI', 'fulbari', 1, '2024-08-16 05:57:15', '2024-08-16 05:57:15'),
(188, 15, 'GHORAGHAT', 'ghoraghat', 1, '2024-08-16 05:57:30', '2024-08-16 05:57:30'),
(189, 15, 'HAKIMPUR', 'hakimpur', 1, '2024-08-16 05:57:45', '2024-08-16 05:57:45'),
(190, 15, 'KAHAROLE', 'kaharole', 1, '2024-08-16 05:58:49', '2024-08-16 05:58:49'),
(191, 15, 'KHANSAMA', 'khansama', 1, '2024-08-16 05:59:09', '2024-08-16 05:59:09'),
(192, 15, 'DINAJPUR SADAR', 'dinajpur-sadar', 1, '2024-08-16 05:59:32', '2024-08-16 05:59:32'),
(193, 15, 'PARBATIPUR', 'parbatipur', 1, '2024-08-16 06:00:31', '2024-08-16 06:00:31'),
(194, 16, 'ALFADANGA', 'alfadanga', 1, '2024-08-16 06:01:57', '2024-08-16 06:01:57'),
(195, 16, 'BHANGA', 'bhanga', 1, '2024-08-16 06:02:18', '2024-08-16 06:02:18'),
(196, 16, 'BOALMARI', 'boalmari', 1, '2024-08-16 06:02:35', '2024-08-16 06:02:35'),
(197, 16, 'CHAR BHADRASAN', 'char-bhadrasan', 1, '2024-08-16 06:02:57', '2024-08-16 06:02:57'),
(198, 16, 'FARIDPUR SADAR', 'faridpur-sadar', 1, '2024-08-16 06:03:15', '2024-08-16 06:03:15'),
(199, 16, 'MADHUKHALI', 'madhukhali', 1, '2024-08-16 06:03:31', '2024-08-16 06:03:31'),
(200, 16, 'NAGARKANDA', 'nagarkanda', 1, '2024-08-16 06:03:51', '2024-08-16 06:03:51'),
(201, 16, 'SADARPUR', 'sadarpur', 1, '2024-08-16 06:04:08', '2024-08-16 06:04:08'),
(202, 16, 'SALTHA', 'saltha', 1, '2024-08-16 06:04:30', '2024-08-16 06:04:30'),
(203, 17, 'CHHAGALNAIYA', 'chhagalnaiya', 1, '2024-08-16 06:07:31', '2024-08-16 06:07:31'),
(204, 17, 'DAGANBHUIYAN', 'daganbhuiyan', 1, '2024-08-16 06:07:48', '2024-08-16 06:07:48'),
(205, 17, 'FENI SADAR', 'feni-sadar', 1, '2024-08-16 06:08:15', '2024-08-16 06:08:15'),
(206, 17, 'FULGAZI', 'fulgazi', 1, '2024-08-16 06:08:33', '2024-08-16 06:08:33'),
(207, 17, 'PARSHURAM', 'parshuram', 1, '2024-08-16 06:08:49', '2024-08-16 06:08:49'),
(208, 17, 'SONAGAZI', 'sonagazi', 1, '2024-08-16 06:09:05', '2024-08-16 06:09:05'),
(209, 18, 'FULCHHARI', 'fulchhari', 1, '2024-08-16 06:10:04', '2024-08-16 06:10:04'),
(210, 18, 'GAIBANDHA SADAR', 'gaibandha-sadar', 1, '2024-08-16 06:10:23', '2024-08-16 06:10:23'),
(211, 18, 'GOBINDAGANJ', 'gobindaganj', 1, '2024-08-16 06:10:43', '2024-08-16 06:10:43'),
(212, 18, 'PALASHBARI', 'palashbari', 1, '2024-08-16 06:11:04', '2024-08-16 06:11:04'),
(213, 18, 'SADULLAPUR', 'sadullapur', 1, '2024-08-16 06:11:21', '2024-08-16 06:11:21'),
(214, 18, 'SAGHATA', 'saghata', 1, '2024-08-16 06:11:38', '2024-08-16 06:11:38'),
(215, 18, 'SUNDARGANJ', 'sundarganj', 1, '2024-08-16 06:11:55', '2024-08-16 06:11:55'),
(216, 19, 'GAZIPUR SADAR', 'gazipur-sadar', 1, '2024-08-16 06:13:06', '2024-08-16 06:13:06'),
(217, 19, 'KALIAKAIR', 'kaliakair', 1, '2024-08-16 06:14:00', '2024-08-16 06:14:00'),
(218, 19, 'KALIGANJ', 'kaliganj', 1, '2024-08-16 06:14:21', '2024-08-16 06:14:21'),
(219, 19, 'KAPASIA', 'kapasia', 1, '2024-08-16 06:14:41', '2024-08-16 06:14:41'),
(220, 19, 'SREEPUR', 'sreepur', 1, '2024-08-16 06:15:03', '2024-08-16 06:15:03'),
(221, 20, 'GOPALGANJ SADAR', 'gopalganj-sadar', 1, '2024-08-16 06:15:45', '2024-08-16 06:15:45'),
(222, 20, 'KASHIANI', 'kashiani', 1, '2024-08-16 06:16:04', '2024-08-16 06:16:04'),
(223, 20, 'KOTALIPARA', 'kotalipara', 1, '2024-08-16 06:16:24', '2024-08-16 06:16:24'),
(224, 20, 'MUKSUDPUR', 'muksudpur', 1, '2024-08-16 06:16:43', '2024-08-16 06:16:43'),
(225, 20, 'TUNGIPARA', 'tungipara', 1, '2024-08-16 06:17:01', '2024-08-16 06:17:01'),
(226, 21, 'AJMIRIGANJ', 'ajmiriganj', 1, '2024-08-16 06:18:20', '2024-08-16 06:18:20'),
(227, 21, 'BAHUBAL', 'bahubal', 1, '2024-08-16 06:19:17', '2024-08-16 06:19:17'),
(228, 21, 'BANIACHONG', 'baniachong', 1, '2024-08-16 06:19:42', '2024-08-16 06:19:42'),
(229, 21, 'CHUNARUGHAT', 'chunarughat', 1, '2024-08-16 06:20:19', '2024-08-16 06:20:19'),
(230, 21, 'HABIGANJ SADAR', 'habiganj-sadar', 1, '2024-08-16 06:20:47', '2024-08-16 06:20:47'),
(231, 21, 'LAKHAI', 'lakhai', 1, '2024-08-16 06:21:30', '2024-08-16 06:21:30'),
(232, 21, 'MADHABPUR', 'madhabpur', 1, '2024-08-16 06:22:37', '2024-08-16 06:22:37'),
(233, 21, 'NABIGANJ', 'nabiganj', 1, '2024-08-16 06:23:00', '2024-08-16 06:23:00'),
(234, 22, 'BAKSHIGANJ', 'bakshiganj', 1, '2024-08-16 06:24:49', '2024-08-16 06:24:49'),
(235, 22, 'DEWANGANJ', 'dewanganj', 1, '2024-08-16 06:25:06', '2024-08-16 06:25:06'),
(236, 22, 'ISLAMPUR', 'islampur', 1, '2024-08-16 06:25:23', '2024-08-16 06:25:23'),
(237, 22, 'JAMALPUR SADAR', 'jamalpur-sadar', 1, '2024-08-16 06:25:42', '2024-08-16 06:25:42'),
(238, 22, 'MADARGANJ', 'madarganj', 1, '2024-08-16 06:25:57', '2024-08-16 06:25:57'),
(239, 22, 'MELANDAHA', 'melandaha', 1, '2024-08-16 06:26:12', '2024-08-16 06:26:12'),
(240, 22, 'SARISHABARI', 'sarishabari', 1, '2024-08-16 06:26:29', '2024-08-16 06:26:29'),
(241, 23, 'ABHAYNAGAR', 'abhaynagar', 1, '2024-08-16 06:26:58', '2024-08-16 06:28:00'),
(242, 23, 'BAGHER PARA', 'bagher-para', 1, '2024-08-16 06:29:27', '2024-08-16 06:29:27'),
(243, 23, 'CHAUGACHHA', 'chaugachha', 1, '2024-08-16 06:29:45', '2024-08-16 06:29:45'),
(244, 23, 'JHIKARGACHHA', 'jhikargachha', 1, '2024-08-16 06:30:07', '2024-08-16 06:30:07'),
(245, 23, 'KESHABPUR', 'keshabpur', 1, '2024-08-16 06:30:23', '2024-08-16 06:30:23'),
(246, 23, 'JESSORE SADAR', 'jessore-sadar', 1, '2024-08-16 06:30:41', '2024-08-16 06:30:41'),
(247, 23, 'MANIRAMPUR', 'manirampur', 1, '2024-08-16 06:30:57', '2024-08-16 06:30:57'),
(248, 23, 'SHARSHA', 'sharsha', 1, '2024-08-16 06:31:12', '2024-08-16 06:31:12'),
(249, 24, 'JHALOKATI SADAR', 'jhalokati-sadar', 1, '2024-08-16 06:40:16', '2024-08-16 06:40:16'),
(250, 24, 'KANTHALIA', 'kanthalia', 1, '2024-08-16 06:40:35', '2024-08-16 06:40:35'),
(251, 24, 'NALCHITY', 'nalchity', 1, '2024-08-16 06:40:53', '2024-08-16 06:40:53'),
(252, 24, 'RAJAPUR', 'rajapur', 1, '2024-08-16 06:41:10', '2024-08-16 06:41:10'),
(253, 25, 'HARINAKUNDA', 'harinakunda', 1, '2024-08-16 06:42:54', '2024-08-16 06:42:54'),
(254, 25, 'JHENAIDAH SADAR', 'jhenaidah-sadar', 1, '2024-08-16 06:44:16', '2024-08-16 06:44:16'),
(255, 25, 'KOTCHANDPUR', 'kotchandpur', 1, '2024-08-16 06:45:09', '2024-08-16 06:45:09'),
(256, 25, 'MAHESHPUR', 'maheshpur', 1, '2024-08-16 06:45:48', '2024-08-16 06:45:48'),
(257, 25, 'SHAILKUPA', 'shailkupa', 1, '2024-08-16 06:47:54', '2024-08-16 06:47:54'),
(258, 26, 'AKKELPUR', 'akkelpur', 1, '2024-08-16 06:49:30', '2024-08-16 06:49:30'),
(259, 26, 'JOYPURHAT SADAR', 'joypurhat-sadar', 1, '2024-08-16 06:49:51', '2024-08-16 06:49:51'),
(260, 26, 'KALAI', 'kalai', 1, '2024-08-16 06:50:08', '2024-08-16 06:50:08'),
(261, 26, 'KHETLAL', 'khetlal', 1, '2024-08-16 06:50:26', '2024-08-16 06:50:26'),
(262, 26, 'PANCHBIBI', 'panchbibi', 1, '2024-08-16 06:50:40', '2024-08-16 06:50:40'),
(263, 27, 'DIGHINALA', 'dighinala', 1, '2024-08-16 06:51:21', '2024-08-16 06:51:21'),
(264, 27, 'KHAGRACHHARI SADAR', 'khagrachhari-sadar', 1, '2024-08-16 06:51:47', '2024-08-16 06:51:47'),
(265, 27, 'LAKSHMICHHARI', 'lakshmichhari', 1, '2024-08-16 06:52:04', '2024-08-16 06:52:04'),
(266, 27, 'MAHALCHHARI', 'mahalchhari', 1, '2024-08-16 06:52:20', '2024-08-16 06:52:20'),
(267, 27, 'MANIKCHHARI', 'manikchhari', 1, '2024-08-16 06:52:37', '2024-08-16 06:52:37'),
(268, 27, 'MATIRANGA', 'matiranga', 1, '2024-08-16 06:52:56', '2024-08-16 06:52:56'),
(269, 27, 'PANCHHARI', 'panchhari', 1, '2024-08-16 06:53:19', '2024-08-16 06:53:19'),
(270, 27, 'RAMGARH', 'ramgarh', 1, '2024-08-16 06:53:35', '2024-08-16 06:53:35'),
(271, 28, 'BATIAGHATA', 'batiaghata', 1, '2024-08-16 06:54:25', '2024-08-16 06:54:25'),
(272, 28, 'DACOPE', 'dacope', 1, '2024-08-16 06:54:41', '2024-08-16 06:54:41'),
(273, 28, 'DAULATPUR', 'daulatpur', 1, '2024-08-16 06:55:01', '2024-08-16 06:55:01'),
(274, 28, 'DUMURIA', 'dumuria', 1, '2024-08-16 06:55:27', '2024-08-16 06:55:27'),
(275, 28, 'DIGHALIA', 'dighalia', 1, '2024-08-16 06:55:43', '2024-08-16 06:55:43'),
(276, 28, 'KHALISHPUR', 'khalishpur', 1, '2024-08-16 06:56:00', '2024-08-16 06:56:00'),
(277, 28, 'KHAN JAHAN ALI', 'khan-jahan-ali', 1, '2024-08-16 06:56:21', '2024-08-16 06:56:21'),
(278, 28, 'KHULNA SADAR', 'khulna-sadar', 1, '2024-08-16 06:56:43', '2024-08-16 06:56:43'),
(279, 28, 'KOYRA', 'koyra', 1, '2024-08-16 06:57:05', '2024-08-16 06:57:05'),
(280, 28, 'PAIKGACHHA', 'paikgachha', 1, '2024-08-16 06:57:22', '2024-08-16 06:57:22'),
(281, 28, 'PHULTALA', 'phultala', 1, '2024-08-16 06:57:39', '2024-08-16 06:57:39'),
(282, 28, 'RUPSA', 'rupsa', 1, '2024-08-16 06:58:01', '2024-08-16 06:58:01'),
(283, 28, 'SONADANGA', 'sonadanga', 1, '2024-08-16 06:58:17', '2024-08-16 06:58:17'),
(284, 28, 'TEROKHADA', 'terokhada', 1, '2024-08-16 06:58:34', '2024-08-16 06:58:34'),
(285, 29, 'AUSTAGRAM', 'austagram', 1, '2024-08-16 07:01:43', '2024-08-16 07:01:43'),
(286, 29, 'BAJITPUR', 'bajitpur', 1, '2024-08-16 07:02:04', '2024-08-16 07:02:04'),
(287, 29, 'BHAIRAB', 'bhairab', 1, '2024-08-16 07:02:21', '2024-08-16 07:02:21'),
(288, 29, 'HOSSAINPUR', 'hossainpur', 1, '2024-08-16 07:02:49', '2024-08-16 07:02:49'),
(289, 29, 'ITNA', 'itna', 1, '2024-08-16 07:03:06', '2024-08-16 07:03:06'),
(290, 29, 'KARIMGANJ', 'karimganj', 1, '2024-08-16 07:03:24', '2024-08-16 07:03:24'),
(291, 29, 'KATIADI', 'katiadi', 1, '2024-08-16 07:03:40', '2024-08-16 07:03:40'),
(292, 29, 'KISHOREGANJ SADAR', 'kishoreganj-sadar', 1, '2024-08-16 07:04:01', '2024-08-16 07:04:01'),
(293, 29, 'KULIAR CHAR', 'kuliar-char', 1, '2024-08-16 07:04:19', '2024-08-16 07:04:19'),
(294, 29, 'MITHAMAIN', 'mithamain', 1, '2024-08-16 07:04:35', '2024-08-16 07:04:35'),
(295, 29, 'NIKLI', 'nikli', 1, '2024-08-16 07:04:53', '2024-08-16 07:04:53'),
(296, 29, 'PAKUNDIA', 'pakundia', 1, '2024-08-16 07:05:10', '2024-08-16 07:05:10'),
(297, 29, 'TARAIL', 'tarail', 1, '2024-08-16 07:05:26', '2024-08-16 07:05:26'),
(298, 30, 'BHURUNGAMARI', 'bhurungamari', 1, '2024-08-16 07:06:17', '2024-08-16 07:06:17'),
(299, 30, 'CHAR RAJIBPUR', 'char-rajibpur', 1, '2024-08-16 07:06:34', '2024-08-16 07:06:34'),
(300, 30, 'CHILMARI', 'chilmari', 1, '2024-08-16 07:06:51', '2024-08-16 07:06:51'),
(301, 30, 'PHULBARI', 'phulbari', 1, '2024-08-16 07:07:09', '2024-08-16 07:07:09'),
(302, 30, 'KURIGRAM SADAR', 'kurigram-sadar', 1, '2024-08-16 07:07:27', '2024-08-16 07:07:27'),
(303, 30, 'NAGESHWARI', 'nageshwari', 1, '2024-08-16 07:07:45', '2024-08-16 07:07:45'),
(304, 30, 'RAJARHAT', 'rajarhat', 1, '2024-08-16 07:08:02', '2024-08-16 07:08:02'),
(305, 30, 'RAUMARI', 'raumari', 1, '2024-08-16 07:08:19', '2024-08-16 07:08:19'),
(306, 30, 'ULIPUR', 'ulipur', 1, '2024-08-16 07:08:37', '2024-08-16 07:08:37'),
(307, 31, 'BHERAMARA', 'bheramara', 1, '2024-08-16 07:09:31', '2024-08-16 07:09:31'),
(308, 31, 'KHOKSA', 'khoksa', 1, '2024-08-16 07:10:23', '2024-08-16 07:10:23'),
(309, 31, 'KUMARKHALI', 'kumarkhali', 1, '2024-08-16 07:10:40', '2024-08-16 07:10:40'),
(310, 31, 'KUSHTIA SADAR', 'kushtia-sadar', 1, '2024-08-16 07:10:59', '2024-08-16 07:10:59'),
(311, 32, 'KAMALNAGAR', 'kamalnagar', 1, '2024-08-16 07:12:04', '2024-08-16 07:12:04'),
(312, 32, 'LAKSHMIPUR SADAR', 'lakshmipur-sadar', 1, '2024-08-16 07:12:22', '2024-08-16 07:12:22'),
(313, 32, 'ROYPUR', 'roypur', 1, '2024-08-16 07:12:41', '2024-08-16 07:12:41'),
(314, 32, 'RAMGANJ', 'ramganj', 1, '2024-08-16 07:12:57', '2024-08-16 07:12:57'),
(315, 32, 'RAMGATI', 'ramgati', 1, '2024-08-16 07:13:14', '2024-08-16 07:13:14'),
(316, 33, 'ADITMARI', 'aditmari', 1, '2024-08-16 07:14:50', '2024-08-16 07:14:50'),
(317, 33, 'HATIBANDHA', 'hatibandha', 1, '2024-08-16 07:15:13', '2024-08-16 07:15:13'),
(318, 33, 'LALMONIRHAT SADAR', 'lalmonirhat-sadar', 1, '2024-08-16 07:15:55', '2024-08-16 07:15:55'),
(319, 33, 'PATGRAM', 'patgram', 1, '2024-08-16 07:16:16', '2024-08-16 07:16:16'),
(320, 34, 'KALKINI', 'kalkini', 1, '2024-08-16 07:17:08', '2024-08-16 07:17:08'),
(321, 34, 'MADARIPUR SADAR', 'madaripur-sadar', 1, '2024-08-16 07:17:27', '2024-08-16 07:17:27'),
(322, 34, 'RAJOIR', 'rajoir', 1, '2024-08-16 07:17:48', '2024-08-16 07:17:48'),
(323, 34, 'SHIBCHAR', 'shibchar', 1, '2024-08-16 07:18:11', '2024-08-16 07:18:11'),
(324, 35, 'MAGURA SADAR', 'magura-sadar', 1, '2024-08-16 07:18:55', '2024-08-16 07:18:55'),
(325, 35, 'SHALIKHA', 'shalikha', 1, '2024-08-16 07:20:15', '2024-08-16 07:20:15'),
(326, 36, 'GHIOR', 'ghior', 1, '2024-08-16 07:22:17', '2024-08-16 07:22:17'),
(327, 36, 'HARIRAMPUR', 'harirampur', 1, '2024-08-16 07:22:37', '2024-08-16 07:22:37'),
(328, 36, 'MANIKGANJ SADAR', 'manikganj-sadar', 1, '2024-08-16 07:22:55', '2024-08-16 07:22:55'),
(329, 36, 'SATURIA', 'saturia', 1, '2024-08-16 07:23:15', '2024-08-16 07:23:15'),
(330, 36, 'SHIBALAYA', 'shibalaya', 1, '2024-08-16 07:23:33', '2024-08-16 07:23:33'),
(331, 36, 'SINGAIR', 'singair', 1, '2024-08-16 07:23:53', '2024-08-16 07:23:53'),
(332, 37, 'BARLEKHA', 'barlekha', 1, '2024-08-16 07:24:56', '2024-08-16 07:24:56'),
(333, 37, 'JURI', 'juri', 1, '2024-08-16 07:25:15', '2024-08-16 07:25:15'),
(334, 37, 'KAMALGANJ', 'kamalganj', 1, '2024-08-16 07:25:35', '2024-08-16 07:25:35'),
(335, 37, 'KULAURA', 'kulaura', 1, '2024-08-16 07:25:57', '2024-08-16 07:25:57'),
(336, 37, 'MAULVIBAZAR SADAR', 'maulvibazar-sadar', 1, '2024-08-16 07:26:16', '2024-08-16 07:26:16'),
(337, 37, 'RAJNAGAR', 'rajnagar', 1, '2024-08-16 07:26:35', '2024-08-16 07:26:35'),
(338, 37, 'SREEMANGAL', 'sreemangal', 1, '2024-08-16 07:26:52', '2024-08-16 07:26:52'),
(339, 38, 'GANGNI', 'gangni', 1, '2024-08-16 07:27:39', '2024-08-16 07:27:39'),
(340, 38, 'MUJIB NAGAR', 'mujib-nagar', 1, '2024-08-16 07:28:00', '2024-08-16 07:28:00'),
(341, 38, 'MEHERPUR SADAR', 'meherpur-sadar', 1, '2024-08-16 07:28:18', '2024-08-16 07:28:18'),
(342, 39, 'GAZARIA', 'gazaria', 1, '2024-08-16 07:29:03', '2024-08-16 07:29:03'),
(343, 39, 'LOHAJANG', 'lohajang', 1, '2024-08-16 07:29:22', '2024-08-16 07:29:22'),
(344, 39, 'MUNSHIGANJ SADAR', 'munshiganj-sadar', 1, '2024-08-16 07:29:43', '2024-08-16 07:29:43'),
(345, 39, 'SERAJDIKHAN', 'serajdikhan', 1, '2024-08-16 07:30:01', '2024-08-16 07:30:01'),
(346, 39, 'SREENAGAR', 'sreenagar', 1, '2024-08-16 07:30:18', '2024-08-16 07:30:18'),
(347, 39, 'TONGIBARI', 'tongibari', 1, '2024-08-16 07:30:35', '2024-08-16 07:30:35'),
(348, 40, 'BHALUKA', 'bhaluka', 1, '2024-08-16 07:31:29', '2024-08-16 07:31:29'),
(349, 40, 'DHOBAURA', 'dhobaura', 1, '2024-08-16 07:31:45', '2024-08-16 07:31:45'),
(350, 40, 'FULBARIA', 'fulbaria', 1, '2024-08-16 07:32:01', '2024-08-16 07:32:01'),
(351, 40, 'GAFFARGAON', 'gaffargaon', 1, '2024-08-16 07:32:18', '2024-08-16 07:32:18'),
(352, 40, 'GAURIPUR', 'gauripur', 1, '2024-08-16 07:32:44', '2024-08-16 07:32:44'),
(353, 40, 'HALUAGHAT', 'haluaghat', 1, '2024-08-16 07:33:00', '2024-08-16 07:33:00'),
(354, 40, 'ISHWARGANJ', 'ishwarganj', 1, '2024-08-16 07:33:18', '2024-08-16 07:33:18'),
(355, 40, 'MYMENSINGH SADAR', 'mymensingh-sadar', 1, '2024-08-16 07:33:44', '2024-08-16 07:33:44'),
(356, 40, 'MUKTAGACHHA', 'muktagachha', 1, '2024-08-16 07:34:04', '2024-08-16 07:34:04'),
(357, 40, 'NANDAIL', 'nandail', 1, '2024-08-16 07:34:21', '2024-08-16 07:34:21'),
(358, 40, 'PHULPUR', 'phulpur', 1, '2024-08-16 07:34:40', '2024-08-16 07:34:40'),
(359, 40, 'TRISHAL', 'trishal', 1, '2024-08-16 07:34:56', '2024-08-16 07:34:56'),
(360, 41, 'ATRAI', 'atrai', 1, '2024-08-16 07:35:59', '2024-08-16 07:35:59'),
(361, 41, 'BADALGACHHI', 'badalgachhi', 1, '2024-08-16 07:36:20', '2024-08-16 07:36:20'),
(362, 41, 'DHAMOIRHAT', 'dhamoirhat', 1, '2024-08-16 07:36:38', '2024-08-16 07:36:38'),
(363, 41, 'MANDA', 'manda', 1, '2024-08-16 07:36:57', '2024-08-16 07:36:57'),
(364, 41, 'MAHADEBPUR', 'mahadebpur', 1, '2024-08-16 07:37:18', '2024-08-16 07:37:18'),
(365, 41, 'NAOGAON SADAR', 'naogaon-sadar', 1, '2024-08-16 07:37:39', '2024-08-16 07:37:39'),
(366, 41, 'NIAMATPUR', 'niamatpur', 1, '2024-08-16 07:38:12', '2024-08-16 07:38:12'),
(367, 41, 'PATNITALA', 'patnitala', 1, '2024-08-16 07:38:31', '2024-08-16 07:38:31'),
(368, 41, 'PORSHA', 'porsha', 1, '2024-08-16 07:38:51', '2024-08-16 07:38:51'),
(369, 41, 'RANINAGAR', 'raninagar', 1, '2024-08-16 07:39:11', '2024-08-16 07:39:11'),
(370, 41, 'SAPAHAR', 'sapahar', 1, '2024-08-16 07:39:29', '2024-08-16 07:39:29'),
(371, 42, 'KALIA', 'kalia', 1, '2024-08-16 07:40:23', '2024-08-16 07:40:23'),
(372, 42, 'NARAIL SADAR', 'narail-sadar', 1, '2024-08-16 07:41:21', '2024-08-16 07:41:21'),
(373, 43, 'ARAIHAZAR', 'araihazar', 1, '2024-08-16 07:42:21', '2024-08-16 07:42:21'),
(374, 43, 'SONARGAON', 'sonargaon', 1, '2024-08-16 07:42:51', '2024-08-16 07:42:51'),
(375, 43, 'NARAYANGANJ BANDAR', 'narayanganj-bandar', 1, '2024-08-16 07:43:24', '2024-08-16 07:45:23'),
(376, 43, 'NARAYANGANJ SADAR', 'narayanganj-sadar', 1, '2024-08-16 07:46:40', '2024-08-16 07:46:40'),
(377, 43, 'RUPGANJ', 'rupganj', 1, '2024-08-16 07:46:58', '2024-08-16 07:46:58'),
(378, 44, 'BELABO', 'belabo', 1, '2024-08-16 07:47:53', '2024-08-16 07:47:53'),
(379, 44, 'MANOHARDI', 'manohardi', 1, '2024-08-16 07:48:14', '2024-08-16 07:48:14'),
(380, 44, 'NARSINGDI SADAR', 'narsingdi-sadar', 1, '2024-08-16 07:48:54', '2024-08-16 07:48:54'),
(381, 44, 'PALASH', 'palash', 1, '2024-08-16 07:49:16', '2024-08-16 07:49:16'),
(382, 44, 'ROYPURA', 'roypura', 1, '2024-08-16 07:49:42', '2024-08-16 07:49:42'),
(383, 44, 'SHIBPUR', 'shibpur', 1, '2024-08-16 07:50:00', '2024-08-16 07:50:00'),
(384, 45, 'BAGATIPARA', 'bagatipara', 1, '2024-08-16 07:51:09', '2024-08-16 07:51:09'),
(385, 45, 'BARAIGRAM', 'baraigram', 1, '2024-08-16 07:51:25', '2024-08-16 07:51:25'),
(386, 45, 'GURUDASPUR', 'gurudaspur', 1, '2024-08-16 07:51:43', '2024-08-16 07:51:43'),
(387, 45, 'LALPUR', 'lalpur', 1, '2024-08-16 07:51:59', '2024-08-16 07:51:59'),
(388, 45, 'NATORE SADAR', 'natore-sadar', 1, '2024-08-16 07:52:15', '2024-08-16 07:52:15'),
(389, 45, 'SINGRA', 'singra', 1, '2024-08-16 07:52:31', '2024-08-16 07:52:31'),
(390, 46, 'ATPARA', 'atpara', 1, '2024-08-16 07:53:14', '2024-08-16 07:53:14'),
(391, 46, 'BARHATTA', 'barhatta', 1, '2024-08-16 07:53:29', '2024-08-16 07:53:29'),
(392, 46, 'DURGAPUR', 'durgapur', 1, '2024-08-16 07:53:43', '2024-08-16 07:53:43'),
(393, 46, 'KHALIAJURI', 'khaliajuri', 1, '2024-08-16 07:54:00', '2024-08-16 07:54:00'),
(394, 46, 'KALMAKANDA', 'kalmakanda', 1, '2024-08-16 07:54:15', '2024-08-16 07:54:15'),
(395, 46, 'KENDUA', 'kendua', 1, '2024-08-16 07:54:31', '2024-08-16 07:54:31'),
(396, 46, 'MADAN', 'madan', 1, '2024-08-16 07:54:46', '2024-08-16 07:54:46'),
(397, 46, 'MOHANGANJ', 'mohanganj', 1, '2024-08-16 07:55:03', '2024-08-16 07:55:03'),
(398, 46, 'NETROKONA SADAR', 'netrokona-sadar', 1, '2024-08-16 07:55:21', '2024-08-16 07:55:21'),
(399, 46, 'PURBADHALA', 'purbadhala', 1, '2024-08-16 07:55:38', '2024-08-16 07:55:38'),
(400, 47, 'DIMLA', 'dimla', 1, '2024-08-16 07:56:23', '2024-08-16 07:56:23'),
(401, 47, 'DOMAR', 'domar', 1, '2024-08-16 07:56:41', '2024-08-16 07:56:41'),
(402, 47, 'JALDHAKA', 'jaldhaka', 1, '2024-08-16 07:57:05', '2024-08-16 07:57:05'),
(403, 47, 'KISHOREGANJ', 'kishoreganj', 1, '2024-08-16 07:57:39', '2024-08-16 07:57:39'),
(404, 47, 'NILPHAMARI SADAR', 'nilphamari-sadar', 1, '2024-08-16 07:57:58', '2024-08-16 07:57:58'),
(405, 47, 'SAIDPUR', 'saidpur', 1, '2024-08-16 07:58:15', '2024-08-16 07:58:15'),
(406, 48, 'BEGUMGANJ', 'begumganj', 1, '2024-08-16 07:59:12', '2024-08-16 07:59:12'),
(407, 48, 'CHATKHIL', 'chatkhil', 1, '2024-08-16 07:59:48', '2024-08-16 07:59:48'),
(408, 48, 'COMPANIGANJ', 'companiganj', 1, '2024-08-16 08:00:13', '2024-08-16 08:00:13'),
(409, 48, 'HATIYA', 'hatiya', 1, '2024-08-16 08:00:34', '2024-08-16 08:00:34'),
(410, 48, 'KABIRHAT', 'kabirhat', 1, '2024-08-16 08:00:57', '2024-08-16 08:00:57'),
(411, 48, 'SENBAGH', 'senbagh', 1, '2024-08-16 08:01:15', '2024-08-16 08:01:15'),
(412, 48, 'SONAIMURI', 'sonaimuri', 1, '2024-08-16 08:01:31', '2024-08-16 08:01:31'),
(413, 48, 'SUBARNACHAR', 'subarnachar', 1, '2024-08-16 08:01:47', '2024-08-16 08:01:47'),
(414, 48, 'NOAKHALI SADAR', 'noakhali-sadar', 1, '2024-08-16 08:02:05', '2024-08-16 08:02:05'),
(415, 49, 'ATGHARIA', 'atgharia', 1, '2024-08-16 08:02:57', '2024-08-16 08:02:57'),
(416, 49, 'BERA', 'bera', 1, '2024-08-16 08:03:14', '2024-08-16 08:03:14'),
(417, 49, 'BHANGURA', 'bhangura', 1, '2024-08-16 08:03:35', '2024-08-16 08:03:35'),
(418, 49, 'CHATMOHAR', 'chatmohar', 1, '2024-08-16 08:03:53', '2024-08-16 08:03:53'),
(419, 49, 'FARIDPUR', 'faridpur', 1, '2024-08-16 08:04:25', '2024-08-16 08:04:25'),
(420, 49, 'ISHWARDI', 'ishwardi', 1, '2024-08-16 08:04:44', '2024-08-16 08:04:44'),
(421, 49, 'PABNA SADAR', 'pabna-sadar', 1, '2024-08-16 08:05:01', '2024-08-16 08:05:01'),
(422, 49, 'SANTHIA', 'santhia', 1, '2024-08-16 08:05:20', '2024-08-16 08:05:20'),
(423, 49, 'SUJANAGAR', 'sujanagar', 1, '2024-08-16 08:05:38', '2024-08-16 08:05:38'),
(424, 50, 'ATWARI', 'atwari', 1, '2024-08-16 08:06:36', '2024-08-16 08:06:36'),
(425, 50, 'BODA', 'boda', 1, '2024-08-16 08:06:56', '2024-08-16 08:06:56'),
(426, 50, 'DEBIGANJ', 'debiganj', 1, '2024-08-16 08:07:15', '2024-08-16 08:07:15'),
(427, 50, 'PANCHAGARH SADAR', 'panchagarh-sadar', 1, '2024-08-16 08:07:34', '2024-08-16 08:07:34'),
(428, 50, 'TENTULIA', 'tentulia', 1, '2024-08-16 08:08:58', '2024-08-16 08:08:58'),
(429, 51, 'BAUPHAL', 'bauphal', 1, '2024-08-16 08:16:19', '2024-08-16 08:16:19'),
(430, 51, 'DASHMINA', 'dashmina', 1, '2024-08-16 08:17:28', '2024-08-16 08:17:28'),
(431, 51, 'DUMKI', 'dumki', 1, '2024-08-16 08:17:50', '2024-08-16 08:17:50'),
(432, 51, 'GALACHIPA', 'galachipa', 1, '2024-08-16 08:18:08', '2024-08-16 08:18:08'),
(433, 51, 'KALAPARA', 'kalapara', 1, '2024-08-16 08:18:26', '2024-08-16 08:18:26'),
(434, 51, 'MIRZAGANJ', 'mirzaganj', 1, '2024-08-16 08:19:17', '2024-08-16 08:19:17'),
(435, 51, 'PATUAKHALI SADAR', 'patuakhali-sadar', 1, '2024-08-16 08:19:39', '2024-08-16 08:19:39'),
(436, 51, 'RANGABALI', 'rangabali', 1, '2024-08-16 08:20:03', '2024-08-16 08:20:03'),
(437, 52, 'BHANDARIA', 'bhandaria', 1, '2024-08-16 08:21:01', '2024-08-16 08:21:01'),
(438, 52, 'KAWKHALI', 'kawkhali', 1, '2024-08-16 08:21:26', '2024-08-16 08:21:26'),
(439, 52, 'MATHBARIA', 'mathbaria', 1, '2024-08-16 08:21:45', '2024-08-16 08:21:45'),
(440, 52, 'NAZIRPUR', 'nazirpur', 1, '2024-08-16 08:22:03', '2024-08-16 08:22:03'),
(441, 52, 'PIROJPUR SADAR', 'pirojpur-sadar', 1, '2024-08-16 08:22:22', '2024-08-16 08:22:22'),
(442, 52, 'NESARABAD (SWARUPKATI)', 'nesarabad-swarupkati', 1, '2024-08-16 08:22:56', '2024-08-16 08:22:56'),
(443, 52, 'ZIANAGAR', 'zianagar', 1, '2024-08-16 08:23:16', '2024-08-16 08:23:16'),
(444, 53, 'BALIAKANDI', 'baliakandi', 1, '2024-08-16 23:56:33', '2024-08-16 23:56:33'),
(445, 53, 'GOALANDA', 'goalanda', 1, '2024-08-16 23:56:59', '2024-08-16 23:56:59'),
(446, 53, 'KALUKHALI', 'kalukhali', 1, '2024-08-16 23:57:20', '2024-08-16 23:57:20'),
(447, 53, 'PANGSHA', 'pangsha', 1, '2024-08-16 23:57:38', '2024-08-16 23:57:38'),
(448, 53, 'RAJBARI SADAR', 'rajbari-sadar', 1, '2024-08-16 23:58:17', '2024-08-16 23:58:17'),
(449, 54, 'BAGHA', 'bagha', 1, '2024-08-16 23:59:20', '2024-08-16 23:59:20'),
(450, 54, 'BAGHMARA', 'baghmara', 1, '2024-08-16 23:59:40', '2024-08-16 23:59:40'),
(451, 54, 'BOALIA', 'boalia', 1, '2024-08-17 00:00:02', '2024-08-17 00:00:02'),
(452, 54, 'CHARGHAT', 'charghat', 1, '2024-08-17 00:00:25', '2024-08-17 00:00:25'),
(453, 54, 'GODAGARI', 'godagari', 1, '2024-08-17 00:01:28', '2024-08-17 00:01:28'),
(454, 54, 'MATIHAR', 'matihar', 1, '2024-08-17 00:01:47', '2024-08-17 00:01:47'),
(455, 54, 'MOHANPUR', 'mohanpur', 1, '2024-08-17 00:02:06', '2024-08-17 00:02:06'),
(456, 54, 'PABA', 'paba', 1, '2024-08-17 00:03:20', '2024-08-17 00:03:20'),
(457, 54, 'PUTHIA', 'puthia', 1, '2024-08-17 00:03:39', '2024-08-17 00:03:39'),
(458, 54, 'RAJPARA', 'rajpara', 1, '2024-08-17 00:03:55', '2024-08-17 00:03:55'),
(459, 54, 'SHAH MAKHDUM', 'shah-makhdum', 1, '2024-08-17 00:04:16', '2024-08-17 00:04:16'),
(460, 54, 'TANORE', 'tanore', 1, '2024-08-17 00:04:34', '2024-08-17 00:04:34'),
(461, 55, 'BAGHAICHHARI', 'baghaichhari', 1, '2024-08-17 00:05:20', '2024-08-17 00:05:20'),
(462, 55, 'BARKAL', 'barkal', 1, '2024-08-17 00:05:38', '2024-08-17 00:05:38'),
(463, 55, 'KAWKHALI (BETBUNIA)', 'kawkhali-betbunia', 1, '2024-08-17 00:06:04', '2024-08-17 00:06:04'),
(464, 55, 'BELAI CHHARI', 'belai-chhari', 1, '2024-08-17 00:06:25', '2024-08-17 00:06:25'),
(465, 55, 'KAPTAI', 'kaptai', 1, '2024-08-17 00:06:42', '2024-08-17 00:06:42'),
(466, 55, 'JURAI CHHARI', 'jurai-chhari', 1, '2024-08-17 00:07:00', '2024-08-17 00:07:00'),
(467, 55, 'LANGADU', 'langadu', 1, '2024-08-17 00:07:16', '2024-08-17 00:07:16'),
(468, 55, 'NANIARCHAR', 'naniarchar', 1, '2024-08-17 00:07:32', '2024-08-17 00:07:32'),
(469, 55, 'RAJASTHALI', 'rajasthali', 1, '2024-08-17 00:07:49', '2024-08-17 00:07:49'),
(470, 55, 'RANGAMATI SADAR', 'rangamati-sadar', 1, '2024-08-17 00:08:06', '2024-08-17 00:08:06'),
(471, 56, 'BADARGANJ', 'badarganj', 1, '2024-08-17 00:08:59', '2024-08-17 00:08:59'),
(472, 56, 'GANGACHARA', 'gangachara', 1, '2024-08-17 00:09:20', '2024-08-17 00:09:20'),
(473, 56, 'KAUNIA', 'kaunia', 1, '2024-08-17 00:09:43', '2024-08-17 00:09:43'),
(474, 56, 'RANGPUR SADAR', 'rangpur-sadar', 1, '2024-08-17 00:10:00', '2024-08-17 00:10:00'),
(475, 56, 'MITHA PUKUR', 'mitha-pukur', 1, '2024-08-17 00:10:16', '2024-08-17 00:10:16'),
(476, 56, 'PIRGACHHA', 'pirgachha', 1, '2024-08-17 00:10:36', '2024-08-17 00:10:36'),
(477, 56, 'PIRGANJ', 'pirganj', 1, '2024-08-17 00:10:58', '2024-08-17 00:10:58'),
(478, 56, 'TARAGANJ', 'taraganj', 1, '2024-08-17 00:11:15', '2024-08-17 00:11:15'),
(479, 57, 'ASSASUNI', 'assasuni', 1, '2024-08-17 00:11:54', '2024-08-17 00:11:54'),
(480, 57, 'DEBHATA', 'debhata', 1, '2024-08-17 00:12:13', '2024-08-17 00:12:13'),
(481, 57, 'KALAROA', 'kalaroa', 1, '2024-08-17 00:12:32', '2024-08-17 00:12:32'),
(482, 57, 'SATKHIRA SADAR', 'satkhira-sadar', 1, '2024-08-17 00:13:26', '2024-08-17 00:13:26'),
(483, 57, 'SHYAMNAGAR', 'shyamnagar', 1, '2024-08-17 00:13:40', '2024-08-17 00:13:40'),
(484, 57, 'TALA', 'tala', 1, '2024-08-17 00:13:54', '2024-08-17 00:13:54'),
(485, 58, 'BHEDARGANJ', 'bhedarganj', 1, '2024-08-17 00:14:43', '2024-08-17 00:14:43'),
(486, 58, 'DAMUDYA', 'damudya', 1, '2024-08-17 00:15:00', '2024-08-17 00:15:00'),
(487, 58, 'GOSAIRHAT', 'gosairhat', 1, '2024-08-17 00:15:16', '2024-08-17 00:15:16'),
(488, 58, 'NARIA', 'naria', 1, '2024-08-17 00:15:34', '2024-08-17 00:15:34'),
(489, 58, 'SHARIATPUR SADAR', 'shariatpur-sadar', 1, '2024-08-17 00:15:50', '2024-08-17 00:15:50'),
(490, 58, 'ZANJIRA', 'zanjira', 1, '2024-08-17 00:16:06', '2024-08-17 00:16:06'),
(491, 59, 'JHENAIGATI', 'jhenaigati', 1, '2024-08-17 00:16:52', '2024-08-17 00:16:52'),
(492, 59, 'NAKLA', 'nakla', 1, '2024-08-17 00:17:07', '2024-08-17 00:17:07'),
(493, 59, 'NALITABARI', 'nalitabari', 1, '2024-08-17 00:17:23', '2024-08-17 00:17:23'),
(494, 59, 'SHERPUR SADAR', 'sherpur-sadar', 1, '2024-08-17 00:17:41', '2024-08-17 00:17:41'),
(495, 59, 'SREEBARDI', 'sreebardi', 1, '2024-08-17 00:17:57', '2024-08-17 00:17:57'),
(496, 60, 'BELKUCHI', 'belkuchi', 1, '2024-08-17 00:18:46', '2024-08-17 00:18:46'),
(497, 60, 'CHAUHALI', 'chauhali', 1, '2024-08-17 00:19:04', '2024-08-17 00:19:04'),
(498, 60, 'KAMARKHANDA', 'kamarkhanda', 1, '2024-08-17 00:19:22', '2024-08-17 00:19:22'),
(499, 60, 'KAZIPUR', 'kazipur', 1, '2024-08-17 00:19:40', '2024-08-17 00:19:40'),
(500, 60, 'ROYGANJ', 'royganj', 1, '2024-08-17 00:19:55', '2024-08-17 00:19:55'),
(501, 60, 'SHAHJADPUR', 'shahjadpur', 1, '2024-08-17 00:20:09', '2024-08-17 00:20:09'),
(502, 60, 'SIRAJGANJ SADAR', 'sirajganj-sadar', 1, '2024-08-17 00:20:26', '2024-08-17 00:20:26'),
(503, 60, 'TARASH', 'tarash', 1, '2024-08-17 00:20:42', '2024-08-17 00:20:42'),
(504, 60, 'ULLAH PARA', 'ullah-para', 1, '2024-08-17 00:20:58', '2024-08-17 00:20:58'),
(505, 61, 'BISHWAMBARPUR', 'bishwambarpur', 1, '2024-08-17 00:21:43', '2024-08-17 00:21:43'),
(506, 61, 'CHHATAK', 'chhatak', 1, '2024-08-17 00:22:01', '2024-08-17 00:22:01'),
(507, 61, 'DAKSHIN SUNAMGANJ', 'dakshin-sunamganj', 1, '2024-08-17 00:22:19', '2024-08-17 00:22:19'),
(508, 61, 'DERAI', 'derai', 1, '2024-08-17 00:22:36', '2024-08-17 00:22:36'),
(509, 61, 'DHARAMPASHA', 'dharampasha', 1, '2024-08-17 00:22:55', '2024-08-17 00:22:55'),
(510, 61, 'DOWARABAZAR', 'dowarabazar', 1, '2024-08-17 00:23:09', '2024-08-17 00:23:09'),
(511, 61, 'JAGANNATHPUR', 'jagannathpur', 1, '2024-08-17 00:23:23', '2024-08-17 00:23:23'),
(512, 61, 'JAMALGANJ', 'jamalganj', 1, '2024-08-17 00:23:37', '2024-08-17 00:23:37'),
(513, 61, 'SULLA', 'sulla', 1, '2024-08-17 00:23:53', '2024-08-17 00:23:53'),
(514, 61, 'SUNAMGANJ SADAR', 'sunamganj-sadar', 1, '2024-08-17 00:24:09', '2024-08-17 00:24:09'),
(515, 61, 'TAHIRPUR', 'tahirpur', 1, '2024-08-17 00:24:23', '2024-08-17 00:24:23'),
(516, 62, 'BALAGANJ', 'balaganj', 1, '2024-08-17 00:25:15', '2024-08-17 00:25:15'),
(517, 62, 'BEANI BAZAR', 'beani-bazar', 1, '2024-08-17 00:25:31', '2024-08-17 00:25:31'),
(518, 62, 'BISHWANATH', 'bishwanath', 1, '2024-08-17 00:25:45', '2024-08-17 00:25:45'),
(519, 62, 'DAKSHIN SURMA', 'dakshin-surma', 1, '2024-08-17 00:26:47', '2024-08-17 00:26:47'),
(520, 62, 'FENCHUGANJ', 'fenchuganj', 1, '2024-08-17 00:27:02', '2024-08-17 00:27:02'),
(521, 62, 'GOLAPGANJ', 'golapganj', 1, '2024-08-17 00:27:15', '2024-08-17 00:27:15'),
(522, 62, 'GOWAINGHAT', 'gowainghat', 1, '2024-08-17 00:27:32', '2024-08-17 00:27:32'),
(523, 62, 'JAINTIAPUR', 'jaintiapur', 1, '2024-08-17 00:27:46', '2024-08-17 00:27:46'),
(524, 62, 'KANAIGHAT', 'kanaighat', 1, '2024-08-17 00:28:01', '2024-08-17 00:28:01'),
(525, 62, 'SYLHET SADAR', 'sylhet-sadar', 1, '2024-08-17 00:28:19', '2024-08-17 00:28:19'),
(526, 62, 'ZAKIGANJ', 'zakiganj', 1, '2024-08-17 00:28:34', '2024-08-17 00:28:34'),
(527, 63, 'BASAIL', 'basail', 1, '2024-08-17 00:29:27', '2024-08-17 00:29:27'),
(528, 63, 'BHUAPUR', 'bhuapur', 1, '2024-08-17 00:29:41', '2024-08-17 00:29:41'),
(529, 63, 'DELDUAR', 'delduar', 1, '2024-08-17 00:29:56', '2024-08-17 00:29:56'),
(530, 63, 'DHANBARI', 'dhanbari', 1, '2024-08-17 00:30:12', '2024-08-17 00:30:12'),
(531, 63, 'GHATAIL', 'ghatail', 1, '2024-08-17 00:30:29', '2024-08-17 00:30:29'),
(532, 63, 'GOPALPUR', 'gopalpur', 1, '2024-08-17 00:30:46', '2024-08-17 00:30:46'),
(533, 63, 'KALIHATI', 'kalihati', 1, '2024-08-17 00:31:00', '2024-08-17 00:31:00'),
(534, 63, 'MADHUPUR', 'madhupur', 1, '2024-08-17 00:31:16', '2024-08-17 00:31:16'),
(535, 63, 'MIRZAPUR', 'mirzapur', 1, '2024-08-17 00:31:30', '2024-08-17 00:31:30'),
(536, 63, 'NAGARPUR', 'nagarpur', 1, '2024-08-17 00:31:44', '2024-08-17 00:31:44'),
(537, 63, 'SAKHIPUR', 'sakhipur', 1, '2024-08-17 00:31:59', '2024-08-17 00:31:59'),
(538, 63, 'TANGAIL SADAR', 'tangail-sadar', 1, '2024-08-17 00:32:13', '2024-08-17 00:32:13'),
(539, 64, 'BALIADANGI', 'baliadangi', 1, '2024-08-17 00:32:57', '2024-08-17 00:32:57'),
(540, 64, 'HARIPUR', 'haripur', 1, '2024-08-17 00:33:15', '2024-08-17 00:33:15'),
(541, 64, 'RANISANKAIL', 'ranisankail', 1, '2024-08-17 00:34:10', '2024-08-17 00:34:10'),
(542, 64, 'THAKURGAON SADAR', 'thakurgaon-sadar', 1, '2024-08-17 00:34:28', '2024-08-17 00:34:28');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_pages`
--

CREATE TABLE `contact_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_pages`
--

INSERT INTO `contact_pages` (`id`, `banner`, `title`, `description`, `email`, `address`, `phone`, `map`, `created_at`, `updated_at`) VALUES
(1, 'uploads/custom-images/contact-us-2022-02-11-03-39-19-2626.jpg', 'Oshin Online Shopping', 'An online shopping platform of Authentic and Organic Products in Bangladesh.', 'info@oshin.com.bd', 'House# 5, Road# 17, Block# E, Banani, Dhaka- 1213.', '+88 01322 406920', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14615.994260040543!2d90.49477098678912!3d23.67600930953518!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b6c9cac2182b%3A0x8cbfd7608a612b0e!2sPaschim%20Para%2C%20Kadamtoli!5e0!3m2!1sen!2sbd!4v1719647563096!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '2022-01-30 12:31:58', '2024-09-03 16:01:17');

-- --------------------------------------------------------

--
-- Table structure for table `cookie_consents`
--

CREATE TABLE `cookie_consents` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `border` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `corners` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `border_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_bg_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cookie_consents`
--

INSERT INTO `cookie_consents` (`id`, `status`, `border`, `corners`, `background_color`, `text_color`, `border_color`, `btn_bg_color`, `btn_text_color`, `message`, `link_text`, `btn_text`, `link`, `created_at`, `updated_at`) VALUES
(1, 1, 'thin', 'normal', '#184dec', '#fafafa', '#0a58d6', '#fffceb', '#222758', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 'More Info', 'Yes', NULL, NULL, '2022-02-13 08:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh', 'bangladesh', 1, '2022-01-30 09:28:28', '2024-09-30 16:45:05'),
(2, 'India', 'india', 1, '2022-01-30 09:28:39', '2022-01-30 09:28:39'),
(4, 'United Kindom', 'united-kindom', 1, '2022-02-06 04:11:51', '2022-02-06 04:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `country_states`
--

CREATE TABLE `country_states` (
  `id` bigint UNSIGNED NOT NULL,
  `country_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country_states`
--

INSERT INTO `country_states` (`id`, `country_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'BAGERHAT', 'bagerhat', 1, '2022-01-30 09:29:00', '2024-08-15 22:34:53'),
(2, 1, 'BANDARBAN', 'bandarban', 1, '2022-01-30 09:29:07', '2024-08-15 22:35:57'),
(3, 1, 'BARGUNA', 'barguna', 1, '2022-02-05 07:49:14', '2024-08-15 22:36:15'),
(4, 2, 'BARISAL', 'barisal', 1, '2022-02-06 04:16:27', '2024-08-15 22:36:38'),
(5, 2, 'BHOLA', 'bhola', 1, '2022-02-06 04:16:39', '2024-08-15 22:37:03'),
(6, 2, 'BOGRA', 'bogra', 1, '2022-02-06 04:16:48', '2024-08-15 22:37:22'),
(7, 4, 'BRAHMANBARIA', 'brahmanbaria', 1, '2022-02-06 04:17:35', '2024-08-15 22:37:44'),
(8, 4, 'CHANDPUR', 'chandpur', 1, '2022-02-06 04:17:44', '2024-08-15 22:38:04'),
(9, 4, 'CHAPAI NABABGANJ', 'chapai-nababganj', 1, '2022-02-06 04:17:53', '2024-08-15 22:38:23'),
(10, 0, 'CHITTAGONG', 'chittagong', 1, '2024-08-15 22:38:50', '2024-08-15 22:38:50'),
(11, 0, 'CHUADANGA', 'chuadanga', 1, '2024-08-15 22:39:09', '2024-08-15 22:39:09'),
(12, 0, 'COMILLA', 'comilla', 1, '2024-08-15 22:40:50', '2024-08-15 22:40:50'),
(13, 0, 'COX\'S BAZAR', 'coxs-bazar', 1, '2024-08-15 22:41:04', '2024-08-15 22:41:04'),
(14, 0, 'DHAKA', 'dhaka', 1, '2024-08-15 22:41:16', '2024-08-15 22:41:16'),
(15, 0, 'DINAJPUR', 'dinajpur', 1, '2024-08-15 22:41:29', '2024-08-15 22:41:29'),
(16, 0, 'FARIDPUR', 'faridpur', 1, '2024-08-15 22:41:44', '2024-08-15 22:41:44'),
(17, 0, 'FENI', 'feni', 1, '2024-08-15 22:41:57', '2024-08-15 22:41:57'),
(18, 0, 'GAIBANDHA', 'gaibandha', 1, '2024-08-15 22:42:15', '2024-08-15 22:42:15'),
(19, 0, 'GAZIPUR', 'gazipur', 1, '2024-08-15 22:42:27', '2024-08-15 22:42:27'),
(20, 0, 'GOPALGANJ', 'gopalganj', 1, '2024-08-15 22:42:40', '2024-08-15 22:42:40'),
(21, 0, 'HABIGANJ', 'habiganj', 1, '2024-08-15 22:42:52', '2024-08-15 22:42:52'),
(22, 0, 'JAMALPUR', 'jamalpur', 1, '2024-08-15 22:43:04', '2024-08-15 22:43:04'),
(23, 0, 'JESSORE', 'jessore', 1, '2024-08-15 22:43:18', '2024-08-15 22:43:18'),
(24, 0, 'JHALOKATI', 'jhalokati', 1, '2024-08-15 22:43:30', '2024-08-15 22:43:30'),
(25, 0, 'JHENAIDAH', 'jhenaidah', 1, '2024-08-15 22:43:43', '2024-08-15 22:43:43'),
(26, 0, 'JOYPURHAT', 'joypurhat', 1, '2024-08-15 22:44:00', '2024-08-15 22:44:00'),
(27, 0, 'KHAGRACHHARI', 'khagrachhari', 1, '2024-08-15 22:44:17', '2024-08-15 22:44:17'),
(28, 0, 'KHULNA', 'khulna', 1, '2024-08-15 22:44:31', '2024-08-15 22:44:31'),
(29, 0, 'KISHOREGONJ', 'kishoregonj', 1, '2024-08-15 22:44:44', '2024-08-15 22:44:44'),
(30, 0, 'KURIGRAM', 'kurigram', 1, '2024-08-15 22:44:55', '2024-08-15 22:44:55'),
(31, 0, 'KUSHTIA', 'kushtia', 1, '2024-08-15 22:45:12', '2024-08-15 22:45:12'),
(32, 0, 'LAKSHMIPUR', 'lakshmipur', 1, '2024-08-15 22:45:39', '2024-08-15 22:45:39'),
(33, 0, 'LALMONIRHAT', 'lalmonirhat', 1, '2024-08-15 22:45:53', '2024-08-15 22:45:53'),
(34, 0, 'MADARIPUR', 'madaripur', 1, '2024-08-15 22:46:08', '2024-08-15 22:46:08'),
(35, 0, 'MAGURA', 'magura', 1, '2024-08-15 22:46:21', '2024-08-15 22:46:21'),
(36, 0, 'MANIKGANJ', 'manikganj', 1, '2024-08-15 22:46:48', '2024-08-15 22:46:48'),
(37, 0, 'MAULVIBAZAR', 'maulvibazar', 1, '2024-08-15 22:47:05', '2024-08-15 22:47:05'),
(38, 0, 'MEHERPUR', 'meherpur', 1, '2024-08-15 22:47:17', '2024-08-15 22:47:17'),
(39, 0, 'MUNSHIGANJ', 'munshiganj', 1, '2024-08-15 22:47:29', '2024-08-15 22:47:29'),
(40, 0, 'MYMENSINGH', 'mymensingh', 1, '2024-08-15 22:47:47', '2024-08-15 22:47:47'),
(41, 0, 'NAOGAON', 'naogaon', 1, '2024-08-15 22:48:00', '2024-08-15 22:48:00'),
(42, 0, 'NARAIL', 'narail', 1, '2024-08-15 22:48:11', '2024-08-15 22:48:11'),
(43, 0, 'NARAYANGANJ', 'narayanganj', 1, '2024-08-15 22:48:32', '2024-08-15 22:48:32'),
(44, 0, 'NARSINGDI', 'narsingdi', 1, '2024-08-15 22:48:52', '2024-08-15 22:48:52'),
(45, 0, 'NATORE', 'natore', 1, '2024-08-15 22:49:03', '2024-08-15 22:49:03'),
(46, 0, 'NETRAKONA', 'netrakona', 1, '2024-08-15 22:49:16', '2024-08-15 22:49:16'),
(47, 0, 'NILPHAMARI', 'nilphamari', 1, '2024-08-15 22:49:28', '2024-08-15 22:49:28'),
(48, 0, 'NOAKHALI', 'noakhali', 1, '2024-08-15 22:49:44', '2024-08-15 22:49:44'),
(49, 0, 'PABNA', 'pabna', 1, '2024-08-15 22:49:55', '2024-08-15 22:49:55'),
(50, 0, 'PANCHAGARH', 'panchagarh', 1, '2024-08-15 22:50:09', '2024-08-15 22:50:09'),
(51, 0, 'PATUAKHALI', 'patuakhali', 1, '2024-08-15 22:50:21', '2024-08-15 22:50:21'),
(52, 0, 'PIROJPUR', 'pirojpur', 1, '2024-08-15 22:50:33', '2024-08-15 22:50:33'),
(53, 0, 'RAJBARI', 'rajbari', 1, '2024-08-15 22:51:22', '2024-08-15 22:51:22'),
(54, 0, 'RAJSHAHI', 'rajshahi', 1, '2024-08-15 22:51:39', '2024-08-15 22:51:39'),
(55, 0, 'RANGAMATI', 'rangamati', 1, '2024-08-15 22:51:57', '2024-08-15 22:51:57'),
(56, 0, 'RANGPUR', 'rangpur', 1, '2024-08-15 22:52:09', '2024-08-15 22:52:09'),
(57, 0, 'SATKHIRA', 'satkhira', 1, '2024-08-15 22:52:22', '2024-08-15 22:52:22'),
(58, 0, 'SHARIATPUR', 'shariatpur', 1, '2024-08-15 22:52:34', '2024-08-15 22:52:34'),
(59, 0, 'SHERPUR', 'sherpur', 1, '2024-08-15 22:52:47', '2024-08-15 22:52:47'),
(60, 0, 'SIRAJGANJ', 'sirajganj', 1, '2024-08-15 22:52:58', '2024-08-15 22:52:58'),
(61, 0, 'SUNAMGANJ', 'sunamganj', 1, '2024-08-15 22:53:10', '2024-08-15 22:53:10'),
(62, 0, 'SYLHET', 'sylhet', 1, '2024-08-15 22:53:22', '2024-08-15 22:53:22'),
(63, 0, 'TANGAIL', 'tangail', 1, '2024-08-15 22:53:34', '2024-08-15 22:53:34'),
(64, 0, 'THAKURGAON', 'thakurgaon', 1, '2024-08-15 22:53:45', '2024-08-15 22:53:45');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_type` int NOT NULL DEFAULT '0',
  `discount` double NOT NULL DEFAULT '0',
  `max_quantity` int NOT NULL DEFAULT '0',
  `expired_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_qty` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `offer_type`, `discount`, `max_quantity`, `expired_date`, `apply_qty`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New Year', 'new', 2, 1200, 7, '2024-07-31', 7, 1, '2022-01-30 09:55:06', '2024-07-23 11:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `currency_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `currency_icon` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `is_default` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `currency_rate` decimal(8,2) NOT NULL,
  `currency_position` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'before_price',
  `status` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `currency_name`, `country_code`, `currency_code`, `currency_icon`, `is_default`, `currency_rate`, `currency_position`, `status`, `created_at`, `updated_at`) VALUES
(1, '৳-Taka', 'BD', 'BDT', '৳', 'yes', 1.00, 'before_price', 'active', '2024-07-11 23:30:38', '2024-07-11 23:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `currency_countries`
--

CREATE TABLE `currency_countries` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `code` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `currency_countries`
--

INSERT INTO `currency_countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Andorra', 'AD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Afghanistan', 'AF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Åland Islands', 'AX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Albania', 'AL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Algeria', 'DZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'American Samoa', 'AS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Angola', 'AO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Anguilla', 'AI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Antarctica', 'AQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Antigua and Barbuda', 'AG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Argentina', 'AR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Armenia', 'AM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Aruba', 'AW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Australia', 'AU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Austria', 'AT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Azerbaijan', 'AZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Bahamas', 'BS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Bahrain', 'BH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Bangladesh', 'BD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Barbados', 'BB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Belarus', 'BY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Belgium', 'BE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Belize', 'BZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Benin', 'BJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Bermuda', 'BM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Bhutan', 'BT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Bolivia (Plurinational State of)', 'BO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Bosnia and Herzegovina', 'BA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Botswana', 'BW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Bouvet Island', 'BV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Brazil', 'BR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'British Indian Ocean Territory', 'IO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Brunei Darussalam', 'BN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Bulgaria', 'BG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Burkina Faso', 'BF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Burundi', 'BI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Cabo Verde', 'CV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Cambodia', 'KH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Cameroon', 'CM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Canada', 'CA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Cayman Islands', 'KY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Central African Republic', 'CF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Chad', 'TD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Chile', 'CL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'China', 'CN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Christmas Island', 'CX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Cocos (Keeling) Islands', 'CC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Colombia', 'CO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Comoros', 'KM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Congo', 'CG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Congo (Democratic Republic of the)', 'CD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Cook Islands', 'CK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Costa Rica', 'CR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Côte d\'Ivoire', 'CI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Croatia', 'HR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Cuba', 'CU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Curaçao', 'CW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Cyprus', 'CY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Czech Republic', 'CZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Denmark', 'DK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Djibouti', 'DJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Dominica', 'DM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Dominican Republic', 'DO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Ecuador', 'EC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Egypt', 'EG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'El Salvador', 'SV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Equatorial Guinea', 'GQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Eritrea', 'ER', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Estonia', 'EE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Ethiopia', 'ET', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Falkland Islands (Malvinas)', 'FK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Faroe Islands', 'FO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Fiji', 'FJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Finland', 'FI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'France', 'FR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'French Guiana', 'GF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'French Polynesia', 'PF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'French Southern Territories', 'TF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Gabon', 'GA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Gambia', 'GM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Georgia', 'GE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Germany', 'DE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Ghana', 'GH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Gibraltar', 'GI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Greece', 'GR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Greenland', 'GL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Grenada', 'GD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Guadeloupe', 'GP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Guam', 'GU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Guatemala', 'GT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Guernsey', 'GG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Guinea', 'GN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Guinea-Bissau', 'GW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Guyana', 'GY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Haiti', 'HT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Heard Island and McDonald Islands', 'HM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Holy See', 'VA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Honduras', 'HN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Hong Kong', 'HK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Hungary', 'HU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Iceland', 'IS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'India', 'IN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Indonesia', 'ID', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Iran (Islamic Republic of)', 'IR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Iraq', 'IQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Ireland', 'IE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Isle of Man', 'IM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Israel', 'IL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Italy', 'IT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Jamaica', 'JM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Japan', 'JP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Jersey', 'JE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Jordan', 'JO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Kazakhstan', 'KZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Kenya', 'KE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Kiribati', 'KI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Korea (Democratic People\'s Republic of)', 'KP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Korea (Republic of)', 'KR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Kuwait', 'KW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Kyrgyzstan', 'KG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Lao People\'s Democratic Republic', 'LA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Latvia', 'LV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Lebanon', 'LB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Lesotho', 'LS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Liberia', 'LR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Libya', 'LY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Liechtenstein', 'LI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Lithuania', 'LT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Luxembourg', 'LU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'Macao', 'MO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Macedonia (the former Yugoslav Republic of)', 'MK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Madagascar', 'MG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Malawi', 'MW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Malaysia', 'MY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Maldives', 'MV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Mali', 'ML', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'Malta', 'MT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'Marshall Islands', 'MH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'Martinique', 'MQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'Mauritania', 'MR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'Mauritius', 'MU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'Mayotte', 'YT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'Mexico', 'MX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'Micronesia (Federated States of)', 'FM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'Moldova (Republic of)', 'MD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'Monaco', 'MC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Mongolia', 'MN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'Montenegro', 'ME', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'Montserrat', 'MS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'Morocco', 'MA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'Mozambique', 'MZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'Myanmar', 'MM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'Namibia', 'NA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'Nauru', 'NR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'Nepal', 'NP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'Netherlands', 'NL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'New Caledonia', 'NC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'New Zealand', 'NZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'Nicaragua', 'NI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'Niger', 'NE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'Nigeria', 'NG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'Niue', 'NU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'Norfolk Island', 'NF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'Northern Mariana Islands', 'MP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'Norway', 'NO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'Oman', 'OM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'Pakistan', 'PK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'Palau', 'PW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'Palestine, State of', 'PS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'Panama', 'PA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'Papua New Guinea', 'PG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'Paraguay', 'PY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'Peru', 'PE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'Philippines', 'PH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'Pitcairn', 'PN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'Poland', 'PL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'Portugal', 'PT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'Puerto Rico', 'PR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'Qatar', 'QA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'Réunion', 'RE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'Romania', 'RO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'Russian Federation', 'RU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'Rwanda', 'RW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'Saint Barthélemy', 'BL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'Saint Kitts and Nevis', 'KN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'Saint Lucia', 'LC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'Saint Martin (French part)', 'MF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'Saint Pierre and Miquelon', 'PM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'Saint Vincent and the Grenadines', 'VC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'Samoa', 'WS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'San Marino', 'SM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'Sao Tome and Principe', 'ST', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'Saudi Arabia', 'SA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'Senegal', 'SN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'Serbia', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'Seychelles', 'SC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'Sierra Leone', 'SL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'Singapore', 'SG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'Sint Maarten (Dutch part)', 'SX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'Slovakia', 'SK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'Slovenia', 'SI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'Solomon Islands', 'SB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'Somalia', 'SO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'South Africa', 'ZA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'South Georgia and the South Sandwich Islands', 'GS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'South Sudan', 'SS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'Spain', 'ES', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'Sri Lanka', 'LK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'Sudan', 'SD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'Suriname', 'SR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'Svalbard and Jan Mayen', 'SJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'Swaziland', 'SZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'Sweden', 'SE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'Switzerland', 'CH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'Syrian Arab Republic', 'SY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'Taiwan, Province of China', 'TW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'Tajikistan', 'TJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'Tanzania, United Republic of', 'TZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'Thailand', 'TH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'Timor-Leste', 'TL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'Togo', 'TG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'Tokelau', 'TK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'Tonga', 'TO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'Trinidad and Tobago', 'TT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'Tunisia', 'TN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'Turkey', 'TR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'Turkmenistan', 'TM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'Turks and Caicos Islands', 'TC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'Tuvalu', 'TV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'Uganda', 'UG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'Ukraine', 'UA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'United Arab Emirates', 'AE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'United Kingdom of Great Britain and Northern Ireland', 'GB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'United States Minor Outlying Islands', 'UM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'United States of America', 'US', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'Uruguay', 'UY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'Uzbekistan', 'UZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'Vanuatu', 'VU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'Venezuela (Bolivarian Republic of)', 'VE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'Viet Nam', 'VN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'Virgin Islands (British)', 'VG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'Virgin Islands (U.S.)', 'VI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'Wallis and Futuna', 'WF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'Western Sahara', 'EH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 'Yemen', 'YE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 'Zambia', 'ZM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 'Zimbabwe', 'ZW', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `page_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `custom_pages`
--

INSERT INTO `custom_pages` (`id`, `page_name`, `slug`, `description`, `banner_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Custom Page One', 'custom-page-one', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 'uploads/custom-images/custom-page-2022-02-11-03-39-42-1795.jpg', 1, '2022-01-30 12:33:25', '2022-02-11 09:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `custom_paginations`
--

CREATE TABLE `custom_paginations` (
  `id` bigint UNSIGNED NOT NULL,
  `page_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `custom_paginations`
--

INSERT INTO `custom_paginations` (`id`, `page_name`, `qty`, `created_at`, `updated_at`) VALUES
(2, 'Product Page', 100, NULL, '2024-09-30 18:37:44'),
(3, 'Brand Page', 8, NULL, '2022-02-07 02:14:01'),
(5, 'Product Review', 10, NULL, '2022-01-11 19:12:57');

-- --------------------------------------------------------

--
-- Table structure for table `email_configurations`
--

CREATE TABLE `email_configurations` (
  `id` bigint UNSIGNED NOT NULL,
  `mail_type` tinyint DEFAULT NULL,
  `mail_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_port` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_configurations`
--

INSERT INTO `email_configurations` (`id`, `mail_type`, `mail_host`, `mail_port`, `email`, `email_password`, `smtp_username`, `smtp_password`, `mail_encryption`, `created_at`, `updated_at`) VALUES
(1, 2, 'smtp.mailtrap.io', '587', 'maryleynda12@gmail.com', 'mary+pass@', '045ae65cc34b16', '48889ee7937b65', 'tls', NULL, '2022-07-03 14:26:11');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Password Reset', 'Password Reset', '<h4>Dear <b>{{name}}</b>,</h4>\r\n    <p>Do you want to reset your password? Please Click the following link and Reset Your Password.</p>', NULL, '2021-12-09 10:06:57'),
(2, 'Contact Email', 'Contact Email', '<p>Name: <b>{{name}}</b></p><p>\r\n\r\nEmail: <b>{{email}}</b></p><p>\r\n\r\nPhone: <b>{{phone}}</b></p><p><span style=\"background-color: transparent;\">Subject: <b>{{subject}}</b></span></p><p>\r\n\r\nMessage: <b>{{message}}</b></p>', NULL, '2021-12-10 23:44:34'),
(3, 'Subscribe Notification', 'Subscribe Notification', '<h2><b>Hi there</b>,</h2><p>\r\nCongratulations! Your Subscription has been created successfully. Please Click the following link and Verified Your Subscription. If you won\'t approve this link, after 24hourse your subscription will be denay</p>', NULL, '2021-12-10 23:44:53'),
(4, 'User Verification', 'User Verification', '<p>Dear <b>{{user_name}}</b>,\r\n</p><p>Congratulations! Your Account has been created successfully. Please Click the following link and Active your Account.</p>', NULL, '2021-12-10 23:45:25'),
(5, 'Seller Withdraw', 'Seller Withdraw Approval', '<p>Hi <b>{{seller_name}}</b>,</p><p>Your withdraw Request Approval successfully. Please check your account.</p><p>Withdraw Details:</p><p>Withdraw method : <b>{{withdraw_method}}</b>,</p><p>Total Amount :<b> {{total_amount}}</b>,</p><p>Withdraw charge : <b>{{withdraw_charge}}</b>,</p><p>Withdraw&nbsp; Amount : <b>{{withdraw_amount}}</b>,</p><p>Approval Date :<b> {{approval_date}}</b></p>', NULL, '2021-12-26 03:24:45'),
(6, 'Order Successfully', 'Order Successfully', '<p>Hi {{user_name}},</p><p> \r\nThanks for your new order. Your order id has been submited .</p><p>Total Amount : {{total_amount}},</p><p>Payment Method : {{payment_method}},</p><p>Payment Status : {{payment_status}},</p><p>Order Status : {{order_status}},</p><p>Order Date: {{order_date}},</p><p>Order Detail: {{order_detail}}</p>', NULL, '2022-01-10 21:37:03'),
(7, 'Seller Request Approved', 'Seller Request Approved', '<p>Hi {{name}},\r\n</p><p><span style=\"background-color: transparent;\">Congratulations !!&nbsp;</span>Your Shop account has been approved successfully</p>', NULL, '2022-02-05 08:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `error_pages`
--

CREATE TABLE `error_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `page_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `error_pages`
--

INSERT INTO `error_pages` (`id`, `page_name`, `page_number`, `header`, `description`, `button_text`, `created_at`, `updated_at`) VALUES
(1, '404 Error', '404', 'That Page Doesn\'t Exist!', 'Sorry, the page you were looking for could not be found.', 'Go to Home', NULL, '2021-12-13 04:25:14'),
(2, '500 Error', '500', 'That Page Doesn\'t Exist!', 'Sorry, the page you were looking for could not be found.', 'Go to Home', NULL, '2021-12-06 09:46:52'),
(3, '505 Error', '505', 'That Page Doesn\'t Exist!', 'Sorry, the page you were looking for could not be found.', 'Go to Home', NULL, '2021-12-06 09:46:57');

-- --------------------------------------------------------

--
-- Table structure for table `facebook_comments`
--

CREATE TABLE `facebook_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `app_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_type` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facebook_comments`
--

INSERT INTO `facebook_comments` (`id`, `app_id`, `comment_type`, `created_at`, `updated_at`) VALUES
(1, '882238482112522', 1, NULL, '2022-02-07 05:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `facebook_pixels`
--

CREATE TABLE `facebook_pixels` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `app_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facebook_pixels`
--

INSERT INTO `facebook_pixels` (`id`, `status`, `app_id`, `created_at`, `updated_at`) VALUES
(1, 1, '972911606915059', NULL, '2021-12-13 22:38:44');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(4, 'ওশিন অনলাইন শপিং সম্পর্কে জানতে চাই।', '<p><span style=\"color: rgb(37, 37, 42); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.32px; text-align: justify;\">ওশিন একটি মাল্টিভেন্ডর ই-কমার্স শপিং প্ল্যাটফর্ম। অর্থাৎ এখানে আপনি আমাদের ক্যাটাগরিতে দেখানো সবধরনের পণ্য অনুসন্ধান করতে পারেন। তবে এই মুহূর্তে আমরা শুধুমাত্র মেয়েদের জামা এবং কম্পিউটার এক্সেসরিজ ও ইলেক্ট্রনিক গেজেট নিয়ে কাজ করছি। খুব শীঘ্রই আমরা আমাদের ওয়েবসাইটের ক্যাটাগরিতে দেখানো সবগুলো পণ্য নিয়ে কাজ শুরু করবো ইনশাআল্লাহ্‌। আমাদের ওয়েবসাইটে যেকোনো পণ্য অনুসন্ধানের জন্য ওয়েবসাইটের উপরে সার্চ অপশনে পণ্যের নাম লিখে সার্চ করুন। অথবা ওয়েবসাইটের উপরে ব্যানারের বাম পাশে ড্রপ-ডাউন মেন্যু থেকে নির্দিষ্ট ক্যাটাগরি সিলেক্ট করুন। নতুন নতুন এবং আকর্ষণীয় আরো অনেক বিষয় যুক্ত হবে আমাদের শপিং-এ। ওশিন এর মূল লক্ষ্য হলো শুধুমাত্র ভাল মানের পণ্যগুলো আপনাদের হাতে পৌছে দেয়া। আমাদের সাথে থাকার জন্য শুভকামনা।</span><br></p>', 1, '2024-08-17 19:49:24', '2024-08-17 19:49:24'),
(5, 'ওশিন অনলাইন শপিং ওয়েবসাইটে পণ্য কিভাবে খুঁজে পাবো?', '<p><span style=\"color: rgb(37, 37, 42); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.32px; text-align: justify;\">আপনি যে পণ্যটি চাচ্ছেন অনুগ্রহ করে আমাদের ওয়েবসাইটের উপরে সার্চবার এ যেয়ে পণ্যটির নাম লিখে সার্চ করুন। অথবা ওয়েবসাইটের উপরে ব্যানারের বাম পাশে ড্রপ-ডাউন মেন্যু থেকে নির্দিষ্ট ক্যাটাগরি সিলেক্ট করুন।</span><br></p>', 1, '2024-08-17 19:50:05', '2024-08-17 19:50:05'),
(6, 'ওশিন অনলাইন শপিং থেকে অর্ডার কিভাবে করবো?', '<p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: inherit; font-size: 16px; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; letter-spacing: 0.32px; text-align: justify;\">(০১) পণ্য খুঁজে বের করাঃ</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: inherit; font-size: 16px; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; letter-spacing: 0.32px; text-align: justify;\">প্রথমে ওশিন ওয়েবসাইটের হোম পেইজ, শপ পেইজ অথবা সার্চবার-এ আপনার প্রয়োজনীয় পণ্যের নাম লিখে সার্চ করে আপনার পণ্যটি খুঁজে বের করুন।</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: inherit; font-size: 16px; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; letter-spacing: 0.32px; text-align: justify;\">(০২) পণ্য “Add to Cart” পেইজে যুক্ত করাঃ</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: inherit; font-size: 16px; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; letter-spacing: 0.32px; text-align: justify;\">পণ্যটির উপর ক্লিক করুন। এখান থেকে কতটি পণ্য আপনার প্রয়োজন সে অনুযায়ী পণ্যের সংখ্যার সিলেক্ট করুন। তারপর “Add to Cart” বাটনে ক্লিক করে পণ্যটি “Add to Cart” পেইজে যুক্ত করুন।</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: inherit; font-size: 16px; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; letter-spacing: 0.32px; text-align: justify;\">এভাবে আপনার প্রয়োজনীয় প্রতিটি পণ্য একটি একটি করে “Add to Cart” পেইজে যুক্ত করুন।</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: inherit; font-size: 16px; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; letter-spacing: 0.32px; text-align: justify;\">(০৩) “Add to Cart” পেইজ চেক করাঃ</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: inherit; font-size: 16px; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; letter-spacing: 0.32px; text-align: justify;\">আপনার প্রয়োজনীয় এক বা একাধিক (সবগুলো) পণ্য “Add to Cart” পেইজে যুক্ত করার পর ওয়েবসাইটের একেবারে উপরে ডান পাশ থেকে “Add to Cart” এর সিম্বলের উপর ক্লিক করে “Add to Cart” পেইজটি খুলুন।</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: inherit; font-size: 16px; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; letter-spacing: 0.32px; text-align: justify;\">(০৪) “Add to Cart” পেইজে নতুন করে আরো পণ্য যুক্ত করাঃ</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: inherit; font-size: 16px; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; letter-spacing: 0.32px; text-align: justify;\">“Add to Cart” পেইজে যাবার পর এখানে যদি আপনার মনে হয় আরো কোন পণ্যের প্রয়োজন আছে, তবে পুনরায় আমাদের ওয়েবসাইটের উপরের OSHIN লোগোর উপর ক্লিক করলে আপনাকে আমাদের সাইটের হোম পেইজে নিয়ে আসবে এবং এখান থেকে পূর্বের নিয়মে আপনার প্রয়োজনীয় পণ্য গুলো যুক্ত করতে পারেন।</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: inherit; font-size: 16px; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; letter-spacing: 0.32px; text-align: justify;\">(০৫) “Add to Cart” পেইজ থেকে পণ্য বাদ দেয়াঃ</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: inherit; font-size: 16px; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; letter-spacing: 0.32px; text-align: justify;\">“Add to Cart” পেইজে যাবার পর এখান থেকে যদি আপনার কোন পণ্য বাদ দেয়ার প্রয়োজন হয়, তবে উক্ত পণ্যের উপর মাউসের কার্সর ধরলে (কম্পিউটার থেকে), অথবা পণ্যটির উপর স্পর্শ করলে (মোবাইল থেকে), পণ্যটির ডান পাশে একটি ডিলিট অপশন আসবে। এটিতে ক্লিক করলেই পণ্যটি ডিলিট হয়ে যাবে।</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: inherit; font-size: 16px; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; letter-spacing: 0.32px; text-align: justify;\">(০৬) “CHECKOUT” পেইজে পণ্যের মোট মূল্য চেক করাঃ</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: inherit; font-size: 16px; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; letter-spacing: 0.32px; text-align: justify;\">“Add to Cart” পেইজে প্রয়োজনীয় পণ্যগুলো যুক্ত করার পর “Add to Cart” পেইজের নিচ থেকে “CHECKOUT” বাটনের উপর ক্লিক করতে হবে। এবং পণ্যের সংখ্যা ও মূল্য ঠিক আছে কিনা, চেক করে দেখতে হবে। যদি দেখা যায় কোন পণ্যের সংখ্যা পরিবর্তন বা বাদ দিতে হবে, তবে পুনরায় ওয়েবসাইটের একেবারে উপরে ডান পাশ থেকে “Add to Cart” এর সিম্বলের উপর ক্লিক করে “Add to Cart” পেইজটি খুলুন। তারপর সংখ্যা ঠিক করে এই পেইজের নিচ থেকে “PROCEED TO CHECKOUT” বাটনের উপর ক্লিক করে পুনরায় “CHECKOUT” পেইজে যান।</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: inherit; font-size: 16px; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; letter-spacing: 0.32px; text-align: justify;\">এখান থেকে নাম, ঠিকানা এবং প্রয়োজনীয় তথ্য গুলো পূরণ করতে হবে।</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: inherit; font-size: 16px; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; letter-spacing: 0.32px; text-align: justify;\">(০৭) পণ্যের পেমেন্ট দেয়াঃ</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: inherit; font-size: 16px; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; letter-spacing: 0.32px; text-align: justify;\">সবকিছু কমপ্লিট করার পর “CHECKOUT” পেইজের একেবারে নিচের দিক থেকে পেমেন্ট অপশন সিলেক্ট করতে হবে। আপনি যদি ক্যাশ অন ডেলিভারি নিতে চান, তবে “CASH ON DELIVERY” অপশনটি সেলেক্ট করুন। আর যদি বিকাশ, নগদ, রকেট ইত্যাদি মোবাইল ব্যাংকিং অথবা ভিসা কার্ড, মাষ্টার কার্ড ইত্যাদির মাধ্যমে মূল্য পরিশোধ করতে চান, তবে “PAYMENT WITH AAMAR PAY” অপশনটি সিলেক্ট করে প্রয়োজনীয় তথ্য গুলো পূরণ করুন।</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: inherit; font-size: 16px; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; letter-spacing: 0.32px; text-align: justify;\">&nbsp;(০৮) পেমেন্ট অপশনটি কমপ্লিট হবার পর&nbsp;<span style=\"padding: 0px; margin: 0px; font-weight: 700;\">I have read and agree to the website&nbsp;</span><span style=\"padding: 0px; margin: 0px; font-weight: 700;\"><a href=\"https://oshin.com.bd/terms-conditions/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all; box-shadow: none;\">terms and conditions</a></span><span style=\"padding: 0px; margin: 0px; font-weight: 700;\">&nbsp;</span><span style=\"padding: 0px; margin: 0px; font-weight: 700;\">*</span>&nbsp;এই লেখাটির চেকমার্কে টিক দিয়ে অতঃপর “PLACE ORDER” বাটনের উপর ক্লিক করে অর্ডার সম্পন্ন করুন।</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: inherit; font-size: 16px; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; letter-spacing: 0.32px; text-align: justify;\">ওশিন অনলাইন শপিং এর সাথে থাকার জন্য আপনাকে অসংখ্য ধন্যবাদ।</p>', 1, '2024-08-17 19:50:55', '2024-08-17 19:50:55'),
(7, 'ওশিন এ কেনাকাটার জন্য পণ্যের মূল্য কি আগে পরিশোধ করতে হয়? ওশিন এর পেমেন্ট সিস্টেম সম্পর্কে জানতে চাই।', '<p><span style=\"color: rgb(37, 37, 42); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.32px; text-align: justify;\">আমরা aamar Pay থার্ড পার্টি পেমেন্ট গেটওয়ে এর মাধ্যমে আমাদের অনলাইন পেমেন্ট সিস্টেম পরিচালনা করে থাকি। সেক্ষেত্রে আপনারা বিকাশ, নগদ, রকেট, ভিসা কার্ড, মাস্টার কার্ড ইত্যাদির মাধ্যমে আপনাদের পেমেন্ট পরিশোধ করতে পারবেন। অনলাইনে</span><br style=\"padding: 0px; margin: 0px; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.32px; text-align: justify;\"><span style=\"color: rgb(37, 37, 42); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.32px; text-align: justify;\">পেমেন্ট পরিশোধের পাশাপাশি আমরা ক্যাশ অন ডেলিভারি (COD) ব্যবস্থাটি চালু রেখেছি। আপনারা যেটিতে স্বাচ্ছন্দ্য বোধ করেন পণ্য কেনার সময় সেটিই নির্বাচন করার জন্য অনুরোধ রইলো।</span><br></p>', 1, '2024-08-17 19:51:26', '2024-08-17 19:51:26'),
(8, 'অর্ডার করার কতদিন পর আমরা পণ্য হাতে পাবো?', '<p><span style=\"color: rgb(37, 37, 42); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.32px; text-align: justify;\">ঢাকার ভিতরেঃ অর্ডার করার পরবর্তী ২-৪ কার্যদিবসে, এবং ঢাকার বাহিরেঃ অর্ডার করার পরবর্তী ৫-৮ কার্যদিবসে পণ্য আপনার / আপনাদের হাতে পৌঁছানো হবে।</span><br></p>', 1, '2024-08-17 19:52:02', '2024-08-17 19:52:02'),
(9, 'পণ্য সম্পর্কে কোন অভিযোগ থাকলে কিভাবে জানাবো?', '<p><span style=\"color: rgb(37, 37, 42); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.32px; text-align: justify;\">কোন পণ্য সম্পর্কে অভিযোগ থাকলে পণ্যটির ছবি এবং অর্ডার নাম্বার সহ পণ্যের সমস্যাটি আমাদেরকে&nbsp;</span><span style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.32px; text-align: justify;\"><a href=\"mailto:info@oshin.com.bd\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all; box-shadow: none;\">info@oshin.com.bd</a></span><span style=\"color: rgb(37, 37, 42); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.32px; text-align: justify;\">&nbsp;এই&nbsp;</span><span style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.32px; text-align: justify;\">মেইল আইডি</span><span style=\"color: rgb(37, 37, 42); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.32px; text-align: justify;\">&nbsp;তে মেইল করে জানাতে হবে। অথবা +</span><span style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.32px; text-align: justify;\">88 01322 406920</span><span style=\"color: rgb(37, 37, 42); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.32px; text-align: justify;\">&nbsp;এই&nbsp;</span><span style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(37, 37, 42); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.32px; text-align: justify;\">WhatsApp</span><span style=\"color: rgb(37, 37, 42); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.32px; text-align: justify;\">&nbsp;নাম্বারে পণ্যের ছবি, অর্ডার নাম্বার এবং অভিযোগটি পাঠাতে হবে। এবং সে অনুযায়ী পরবর্তী ৩-৭ কার্যদিবসে আমরা আপনার সাথে যোগাযোগ করে প্রয়োজনীয় বাবস্থা নিব ইনশাআল্লাহ্‌।</span><br></p>', 1, '2024-08-17 19:52:30', '2024-08-17 19:52:30'),
(10, 'ওশিন ওয়েবসাইটে চ্যাটিং করবো কিভাবে?', '<p><span style=\"color: rgb(37, 37, 42); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.32px; text-align: justify;\">ওয়েবসাইটের নিচে ডান পাশে Chat বাটন এর উপর ক্লিক করুন। তারপর Start chat বাটন এর উপর ক্লিক করুন। সবশেষে Use Messenger অথবা Continue as guest বাটন এর উপর ক্লিক করে চ্যাটিং শুরু করুন।</span><br></p>', 1, '2024-08-17 19:53:15', '2024-08-17 19:53:15'),
(11, 'Chat শেষ করবো কিভাবে?', '<p><span style=\"color: rgb(37, 37, 42); font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.32px; text-align: justify;\">Chat Box এর উপরে ডান পাশে থ্রি-ডট (…) এর উপর ক্লিক করুন। তারপর End chat এর উপর ক্লিক করুন। সবশেষে Confirm বাটন এর উপর ক্লিক করে শেষ করুন / বন্ধ করুন।</span><br></p>', 1, '2024-08-17 19:53:47', '2024-08-17 19:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `flutterwaves`
--

CREATE TABLE `flutterwaves` (
  `id` bigint UNSIGNED NOT NULL,
  `public_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL DEFAULT '1',
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flutterwaves`
--

INSERT INTO `flutterwaves` (`id`, `public_key`, `secret_key`, `currency_rate`, `country_code`, `currency_code`, `title`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'FLWPUBK_TEST-5760e3ff9888aa1ab5e5cd1ec3f99cb1-X', 'FLWSECK_TEST-81cb5da016d0a51f7329d4a8057e766d-X', 417.35, 'NG', 'NGN', 'Ecommerce', 'uploads/website-images/flutterwave-2021-12-30-03-44-30-8813.jpg', 1, NULL, '2022-02-07 02:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint UNSIGNED NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `phone`, `email`, `address`, `first_column`, `second_column`, `third_column`, `copyright`, `payment_image`, `image_title`, `created_at`, `updated_at`) VALUES
(1, '+88 01322 406920', 'info@oshin.com.bd', 'House# 5, Road# 17, Block# E, Banani, Dhaka- 1213.', 'Important Link', 'My Account', 'Our Service', 'Copyright 2024, Oshin Trading. All Rights Reserved.', 'uploads/website-images/oshin-img-2024-09-08-09-20-25-9442.png', 'Pay with aamarPay', NULL, '2024-09-08 15:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `footer_links`
--

CREATE TABLE `footer_links` (
  `id` bigint UNSIGNED NOT NULL,
  `column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `footer_links`
--

INSERT INTO `footer_links` (`id`, `column`, `link`, `title`, `created_at`, `updated_at`) VALUES
(1, '1', 'product', 'Shop Page', '2022-01-30 12:28:07', '2022-02-13 08:45:18'),
(2, '2', 'user/dashboard', 'My Account', '2022-01-30 12:28:21', '2022-02-13 08:47:34'),
(3, '3', 'about-us', 'About Us', '2022-01-30 12:28:33', '2022-02-13 08:48:03'),
(7, '2', 'user/wishlist', 'Wishlist', '2022-02-07 04:17:47', '2022-02-13 08:47:40'),
(8, '2', 'user/order', 'Our Orders', '2022-02-07 04:18:38', '2022-02-13 08:47:45'),
(9, '2', 'user/seller-registration', 'Become a Seller', '2022-02-07 04:19:07', '2022-02-13 08:47:49'),
(13, '3', 'contact-us', 'Contact Us', '2022-02-07 04:24:26', '2022-02-13 08:48:27'),
(14, '2', 'user/review', 'Our Reviews', '2022-02-07 04:24:57', '2022-02-13 08:47:55'),
(15, '1', 'flash-deal', 'Flash Deal', '2022-02-07 04:25:17', '2022-02-13 08:45:34'),
(16, '3', 'privacy-policy', 'Privacy Policy', '2024-08-17 18:33:33', '2024-08-17 18:33:33'),
(17, '3', 'terms-and-conditions', 'Terms & Conditions', '2024-08-17 18:34:50', '2024-08-17 18:34:50'),
(18, '3', 'returns-and-refunds', 'Returns & Refunds', '2024-08-17 18:35:56', '2024-08-30 07:25:44'),
(19, '1', 'sellers', 'Our Sellers', '2024-08-30 07:00:32', '2024-08-30 07:00:32'),
(20, '1', 'faq', 'FAQ', '2024-08-30 07:03:42', '2024-08-30 07:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `footer_social_links`
--

CREATE TABLE `footer_social_links` (
  `id` bigint UNSIGNED NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `footer_social_links`
--

INSERT INTO `footer_social_links` (`id`, `link`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/profile.php?id=61552798880394', 'fab fa-facebook', '2022-01-30 12:27:45', '2024-08-17 18:15:51'),
(2, 'https://www.instagram.com', 'fab fa-instagram', '2022-02-07 04:12:30', '2024-08-17 18:20:24'),
(3, 'https://www.youtube.com', 'fab fa-youtube', '2022-02-07 04:12:57', '2024-08-17 18:17:44'),
(4, 'https://www.twitter.com', 'fab fa-twitter', '2022-02-07 04:13:15', '2024-08-17 18:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `google_analytics`
--

CREATE TABLE `google_analytics` (
  `id` bigint UNSIGNED NOT NULL,
  `analytic_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `google_analytics`
--

INSERT INTO `google_analytics` (`id`, `analytic_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'UA-84213520-6', 1, NULL, '2021-12-10 22:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `google_recaptchas`
--

CREATE TABLE `google_recaptchas` (
  `id` bigint UNSIGNED NOT NULL,
  `site_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `google_recaptchas`
--

INSERT INTO `google_recaptchas` (`id`, `site_key`, `secret_key`, `status`, `created_at`, `updated_at`) VALUES
(1, '6LcVO6cbAAAAAOzIEwPlU66nL1rxD4VAS38tjpBX', '6LcVO6cbAAAAALVNrpZfNRfd0Gy_9a_fJRLiMVUI', 0, NULL, '2022-01-17 00:35:20');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_one_visibilities`
--

CREATE TABLE `home_page_one_visibilities` (
  `id` bigint UNSIGNED NOT NULL,
  `section_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `qty` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_page_one_visibilities`
--

INSERT INTO `home_page_one_visibilities` (`id`, `section_name`, `status`, `qty`, `created_at`, `updated_at`) VALUES
(1, 'Slider', 0, 10, NULL, '2024-09-30 18:46:24'),
(2, 'Brand', 1, 10, NULL, '2022-01-30 11:04:40'),
(3, 'Campaign', 1, 9, NULL, '2022-01-30 11:08:50'),
(4, 'Popular Category', 1, 1, NULL, '2022-01-30 11:04:26'),
(5, 'First Two Column Banner', 1, 1, NULL, '2022-01-30 11:04:03'),
(6, 'Flash Deal', 0, 10, NULL, '2024-09-30 18:46:42'),
(7, 'Highlight Section', 1, 6, NULL, '2024-07-13 07:50:21'),
(8, 'Second two column banner', 1, 1, NULL, '2022-01-30 11:03:25'),
(9, 'Three Column Category', 1, 12, NULL, '2024-08-17 17:56:34'),
(10, 'Third Two Column Banner', 1, 1, NULL, '2022-01-30 11:03:02'),
(11, 'Service', 1, 4, NULL, '2022-01-30 11:02:53'),
(12, 'Blog', 1, 9, NULL, '2022-01-30 11:02:35');

-- --------------------------------------------------------

--
-- Table structure for table `instamojo_payments`
--

CREATE TABLE `instamojo_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `api_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `account_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sandbox',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instamojo_payments`
--

INSERT INTO `instamojo_payments` (`id`, `api_key`, `auth_token`, `currency_rate`, `account_mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test_5f4a2c9a58ef216f8a1a688910f', 'test_994252ada69ce7b3d282b9941c2', '74.66', 'Sandbox', 1, NULL, '2022-02-07 02:32:41');

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `stock_in` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `product_id`, `stock_in`, `created_at`, `updated_at`) VALUES
(2, 12, '230', '2023-01-12 03:36:10', '2023-01-12 03:36:10'),
(3, 12, '555', '2023-01-12 03:36:16', '2023-01-12 03:36:16'),
(6, 13, '100', '2023-01-12 03:59:48', '2023-01-12 03:59:48'),
(7, 13, '50', '2023-01-12 04:00:36', '2023-01-12 04:00:36'),
(8, 13, '80', '2023-01-12 04:00:39', '2023-01-12 04:00:39'),
(10, 36, '10', '2023-01-12 04:24:07', '2023-01-12 04:24:07'),
(11, 37, '100', '2023-01-12 04:25:21', '2023-01-12 04:25:21'),
(12, 37, '800', '2023-01-12 04:25:28', '2023-01-12 04:25:28');

-- --------------------------------------------------------

--
-- Table structure for table `maintainance_texts`
--

CREATE TABLE `maintainance_texts` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintainance_texts`
--

INSERT INTO `maintainance_texts` (`id`, `status`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 'uploads/website-images/maintainance-mode-2024-06-29-01-50-16-2890.jpeg', 'We are upgrading our site.  We will come back soon.  \r\nPlease stay with us. \r\nThank you.', NULL, '2024-06-29 07:50:16');

-- --------------------------------------------------------

--
-- Table structure for table `mega_menu_categories`
--

CREATE TABLE `mega_menu_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mega_menu_categories`
--

INSERT INTO `mega_menu_categories` (`id`, `category_id`, `status`, `serial`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2022-01-30 10:46:29', '2022-01-30 10:46:29'),
(3, 4, 1, 3, '2022-01-30 10:46:48', '2022-01-30 10:46:48'),
(4, 5, 1, 4, '2022-01-30 10:46:55', '2022-01-30 10:46:55');

-- --------------------------------------------------------

--
-- Table structure for table `mega_menu_sub_categories`
--

CREATE TABLE `mega_menu_sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `mega_menu_category_id` int NOT NULL,
  `sub_category_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mega_menu_sub_categories`
--

INSERT INTO `mega_menu_sub_categories` (`id`, `mega_menu_category_id`, `sub_category_id`, `status`, `serial`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2022-01-30 10:47:12', '2022-01-30 10:47:12'),
(2, 3, 2, 1, 1, '2022-01-30 10:47:46', '2022-01-30 10:47:46'),
(3, 3, 3, 1, 2, '2022-01-30 10:47:52', '2022-01-30 10:47:52'),
(4, 3, 4, 1, 3, '2022-01-30 10:47:57', '2022-01-30 10:47:57'),
(5, 4, 5, 1, 1, '2022-01-30 10:48:13', '2022-01-30 10:48:13'),
(6, 1, 7, 1, 2, '2022-02-07 04:03:08', '2022-02-07 04:03:08'),
(7, 1, 8, 1, 3, '2022-02-07 04:03:15', '2022-02-07 04:03:15'),
(8, 1, 9, 1, 4, '2022-02-07 04:03:22', '2022-02-07 04:03:22'),
(9, 4, 13, 1, 2, '2022-02-07 04:04:43', '2022-02-07 04:04:43'),
(10, 4, 15, 1, 3, '2022-02-07 04:04:49', '2022-02-07 04:04:49'),
(11, 4, 16, 1, 4, '2022-02-07 04:04:55', '2022-02-07 04:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `menu_visibilities`
--

CREATE TABLE `menu_visibilities` (
  `id` bigint UNSIGNED NOT NULL,
  `menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_visibilities`
--

INSERT INTO `menu_visibilities` (`id`, `menu_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', 1, NULL, '2022-01-23 20:05:32'),
(2, 'Shop', 1, NULL, '2022-01-23 20:05:31'),
(3, 'Mega Menu', 1, NULL, '2022-01-16 20:51:23'),
(4, 'Sellers', 1, NULL, '2022-01-16 20:52:31'),
(5, 'Blog', 1, NULL, '2022-01-16 20:52:32'),
(6, 'Campaign', 1, NULL, '2022-01-16 20:52:33'),
(7, 'Pages', 1, NULL, '2022-01-16 20:52:34'),
(8, 'About us', 1, NULL, '2022-01-16 20:57:27'),
(9, 'Contact Us', 1, NULL, '2022-01-16 20:57:28'),
(10, 'Checkout', 1, NULL, '2022-01-16 20:57:29'),
(11, 'Brand', 1, NULL, '2022-01-16 20:57:25'),
(12, 'FAQ', 1, NULL, '2022-01-16 20:57:26'),
(13, 'Privacy Policy', 1, NULL, '2022-01-16 20:57:23'),
(14, 'Terms and Conditions', 1, NULL, '2022-01-16 20:57:22'),
(15, 'Track Order', 1, NULL, '2022-01-16 20:52:29'),
(16, 'Flash Deal', 1, NULL, '2022-01-16 20:52:28'),
(17, 'My Account', 1, NULL, '2022-01-16 20:04:54'),
(18, 'Login/Register', 1, NULL, '2022-01-16 20:04:47'),
(19, 'Shopping Cart', 1, NULL, '2022-01-16 20:09:28'),
(20, 'Compare', 1, NULL, '2022-01-16 20:37:54'),
(21, 'Wishlist', 1, NULL, '2022-01-16 20:37:55'),
(22, 'Topbar Phone', 1, NULL, '2022-01-16 20:02:07'),
(23, 'Menu Phone', 1, NULL, '2022-01-16 20:08:00'),
(24, 'Categories', 1, NULL, '2022-01-16 23:52:39'),
(25, 'Search', 1, NULL, '2022-01-16 20:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` int NOT NULL,
  `seller_id` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_read_msg` int NOT NULL DEFAULT '0',
  `seller_read_msg` int NOT NULL,
  `send_customer` int NOT NULL DEFAULT '0',
  `send_seller` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `customer_id`, `seller_id`, `message`, `customer_read_msg`, `seller_read_msg`, `send_customer`, `send_seller`, `created_at`, `updated_at`) VALUES
(5, 1, 6, 'Welcome to Shop Name Five!\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, 0, 0, 6, '2022-02-07 06:37:02', '2022-05-02 06:15:41'),
(6, 1, 6, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 1, 0, 1, 0, '2022-02-07 06:37:21', '2022-05-02 06:15:41'),
(7, 1, 6, 'Lorem Ipsum is simply dummy text of the printing', 1, 0, 1, 0, '2022-02-07 06:37:31', '2022-05-02 06:15:41'),
(8, 1, 6, 'Welcome to Shop Name Five!\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, 0, 0, 6, '2022-02-07 06:44:29', '2022-05-02 06:15:41'),
(9, 1, 5, 'Welcome to Shop name 2!\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, 1, 0, 5, '2022-02-07 06:45:03', '2022-05-02 06:24:41'),
(10, 1, 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 1, 1, 1, 0, '2022-02-07 06:45:23', '2022-05-02 06:24:41'),
(11, 1, 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 1, 1, 0, 5, '2022-02-07 07:00:35', '2022-05-02 06:24:41'),
(13, 1, 5, 'Lorem Ipsum is simply dummy text', 1, 1, 1, 0, '2022-02-13 09:59:19', '2022-05-02 06:24:41'),
(14, 1, 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 1, 1, 1, 0, '2022-02-13 10:00:07', '2022-05-02 06:24:41'),
(15, 1, 6, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 1, 0, 1, 0, '2022-02-13 10:04:05', '2022-05-02 06:15:41'),
(16, 1, 6, 'Lorem Ipsum is simply dummy text', 0, 0, 1, 0, '2022-05-02 06:16:49', '2022-05-02 06:16:49'),
(17, 1, 6, 'of the printing and typesetting industry', 0, 0, 1, 0, '2022-05-02 06:18:40', '2022-05-02 06:18:40'),
(18, 1, 5, 'Lorem Ipsum is simply dummy text', 1, 1, 1, 0, '2022-05-02 06:22:06', '2022-05-02 06:24:41'),
(19, 1, 5, 'Lorem Ipsum is simply dummy text', 1, 1, 1, 0, '2022-05-02 06:23:27', '2022-05-02 06:24:41'),
(20, 1, 5, 'Lorem Ipsum is simply dummy text', 1, 0, 0, 5, '2022-05-02 06:24:18', '2022-05-02 06:24:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_30_035230_create_admins_table', 2),
(6, '2021_11_30_065435_create_email_configurations_table', 3),
(7, '2021_11_30_065508_create_email_templates_table', 3),
(8, '2021_12_01_035206_create_categories_table', 4),
(9, '2021_12_01_035220_create_sub_categories_table', 4),
(10, '2021_12_01_035231_create_child_categories_table', 4),
(11, '2021_12_01_035735_create_brands_table', 4),
(12, '2021_12_02_055907_create_product_taxes_table', 5),
(13, '2021_12_02_083742_create_return_policies_table', 6),
(14, '2021_12_02_084030_create_product_specification_keys_table', 6),
(15, '2021_12_03_093645_create_products_table', 7),
(16, '2021_12_03_101949_create_product_galleries_table', 7),
(17, '2021_12_04_053018_create_product_specifications_table', 8),
(18, '2021_12_06_045447_create_services_table', 9),
(19, '2021_12_06_054423_create_about_us_table', 10),
(20, '2021_12_06_055028_create_custom_pages_table', 10),
(21, '2021_12_07_030532_create_terms_and_conditions_table', 11),
(22, '2021_12_07_035810_create_blog_categories_table', 12),
(23, '2021_12_07_035822_create_blogs_table', 12),
(24, '2021_12_07_040749_create_popular_posts_table', 12),
(25, '2021_12_07_061613_create_blog_comments_table', 13),
(26, '2021_12_07_081832_create_product_variants_table', 14),
(27, '2021_12_07_081858_create_product_variant_items_table', 14),
(28, '2021_12_08_125540_create_campaigns_table', 15),
(29, '2021_12_08_130025_create_campaign_products_table', 15),
(30, '2021_12_09_095158_create_contact_messages_table', 16),
(31, '2021_12_09_095220_create_subscribers_table', 16),
(32, '2021_12_09_124226_create_settings_table', 17),
(33, '2021_12_11_022207_create_cookie_consents_table', 18),
(34, '2021_12_11_025358_create_google_recaptchas_table', 19),
(35, '2021_12_11_025449_create_facebook_comments_table', 19),
(36, '2021_12_11_025556_create_tawk_chats_table', 19),
(37, '2021_12_11_025618_create_google_analytics_table', 19),
(38, '2021_12_11_025712_create_custom_paginations_table', 19),
(39, '2021_12_11_083503_create_faqs_table', 20),
(40, '2021_12_11_094707_create_currencies_table', 21),
(41, '2021_12_13_085612_create_product_reviews_table', 22),
(42, '2021_12_13_090609_create_product_review_galleries_table', 22),
(43, '2021_12_13_101056_create_error_pages_table', 23),
(44, '2021_12_13_102725_create_maintainance_texts_table', 24),
(45, '2021_12_13_110144_create_subscribe_modals_table', 25),
(46, '2021_12_13_111140_create_announcement_modals_table', 26),
(47, '2021_12_13_132626_create_countries_table', 27),
(48, '2021_12_13_132909_create_country_states_table', 27),
(49, '2021_12_13_132935_create_cities_table', 27),
(50, '2021_12_14_032937_create_social_login_information_table', 28),
(51, '2021_12_14_042928_create_facebook_pixels_table', 29),
(52, '2021_12_14_054908_create_paypal_payments_table', 30),
(53, '2021_12_14_054922_create_stripe_payments_table', 30),
(54, '2021_12_14_054939_create_razorpay_payments_table', 30),
(55, '2021_12_14_055252_create_bank_payments_table', 30),
(56, '2021_12_14_084759_create_vendors_table', 31),
(57, '2021_12_14_090013_create_vendor_social_links_table', 31),
(58, '2021_12_15_095059_create_wholesells_table', 32),
(59, '2021_12_16_071213_create_seller_mail_logs_table', 33),
(60, '2021_12_21_093939_create_mega_menu_categories_table', 34),
(61, '2021_12_21_093958_create_mega_menu_sub_categories_table', 34),
(62, '2021_12_22_034106_create_banner_images_table', 35),
(63, '2021_12_22_044839_create_sliders_table', 36),
(64, '2021_12_22_081311_create_popular_categories_table', 37),
(65, '2021_12_23_021844_create_three_column_categories_table', 38),
(66, '2021_12_23_033230_create_shipping_methods_table', 39),
(67, '2021_12_23_065722_create_paystack_and_mollies_table', 40),
(68, '2021_12_23_085225_create_withdraw_methods_table', 41),
(71, '2021_12_25_172918_create_seller_withdraws_table', 42),
(74, '2021_12_25_200413_create_product_reports_table', 43),
(75, '2021_12_25_200707_create_product_report_images_table', 44),
(79, '2021_12_26_052326_create_billing_addresses_table', 45),
(80, '2021_12_26_053952_create_shipping_addresses_table', 45),
(81, '2021_12_26_054841_create_orders_table', 45),
(82, '2021_12_26_164912_create_order_addresses_table', 45),
(83, '2021_12_26_165705_create_order_products_table', 45),
(84, '2021_12_26_170803_create_order_product_variants_table', 45),
(87, '2021_12_28_163200_create_coupons_table', 46),
(88, '2021_12_28_192057_create_contact_pages_table', 47),
(89, '2021_12_28_200846_create_breadcrumb_images_table', 48),
(90, '2021_12_30_032959_create_flutterwaves_table', 49),
(91, '2021_12_30_034716_create_footers_table', 50),
(92, '2021_12_30_035201_create_footer_links_table', 50),
(93, '2021_12_30_035247_create_footer_social_links_table', 50),
(95, '2021_12_30_061157_create_home_page_one_visibilities_table', 51),
(96, '2022_01_11_103950_create_wishlists_table', 52),
(97, '2022_01_12_070110_create_shop_pages_table', 53),
(99, '2022_01_12_080218_create_seo_settings_table', 54),
(100, '2022_01_17_012111_create_menu_visibilities_table', 55),
(101, '2022_01_17_122016_create_instamojo_payments_table', 56),
(102, '2022_01_29_055523_create_messages_table', 57),
(103, '2022_01_29_122621_create_pusher_credentails_table', 58),
(104, '2024_09_29_212147_create_bank_details_table', 59),
(105, '2024_10_26_115654_create_shipping_locations_table', 60);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `amount_usd` double NOT NULL DEFAULT '0',
  `sub_total` double NOT NULL,
  `amount_real_currency` double NOT NULL DEFAULT '0',
  `currency_rate` double NOT NULL DEFAULT '0',
  `currency_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_qty` int NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` int NOT NULL DEFAULT '0',
  `payment_approval_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refound_status` int NOT NULL DEFAULT '0',
  `payment_refound_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transection_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` double NOT NULL DEFAULT '0',
  `coupon_coast` double NOT NULL DEFAULT '0',
  `order_vat` double NOT NULL DEFAULT '0',
  `order_status` int NOT NULL DEFAULT '0',
  `order_approval_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_delivered_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_completed_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_declined_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cash_on_delivery` int NOT NULL DEFAULT '0',
  `additional_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `agree_terms_condition` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `amount_usd`, `sub_total`, `amount_real_currency`, `currency_rate`, `currency_name`, `currency_icon`, `product_qty`, `payment_method`, `payment_status`, `payment_approval_date`, `refound_status`, `payment_refound_date`, `transection_id`, `shipping_method`, `shipping_cost`, `coupon_coast`, `order_vat`, `order_status`, `order_approval_date`, `order_delivered_date`, `order_completed_date`, `order_declined_date`, `cash_on_delivery`, `additional_info`, `agree_terms_condition`, `created_at`, `updated_at`, `total_amount`) VALUES
(19, '1501848900', 1, 992.08, 83520, 85081, 85.76, 'USD', '$', 4, 'Bank Payment', 1, '2022-02-07', 0, NULL, 'Bank of America California Branch,\r\ntnx_KKFDF87455FSDF', 'Free Shipping', 0, 0, 1561, 2, NULL, '2022-02-07', NULL, NULL, 0, '', 'yes', '2022-02-07 06:40:03', '2022-02-07 06:48:17', 0),
(20, '316451389', 1, 1682.84, 138350, 144320.5, 85.76, 'USD', '$', 4, 'Bank Payment', 1, '2022-02-07', 0, NULL, 'Wells Fargo Bank,\r\ntnx_DFJFKFFSJK993483', 'Outside City', 120, 0, 5850.5, 3, '2022-02-07', NULL, '2022-02-07', NULL, 0, '', 'yes', '2022-02-07 06:47:08', '2022-02-07 07:00:08', 0),
(21, '662632756', 1, 1304.96, 107303, 111913, 85.76, 'USD', '$', 3, 'bKash-bKash', 1, '2022-02-07', 0, NULL, NULL, 'Inside City', 60, 0, 4550, 3, NULL, NULL, '2022-02-07', NULL, 1, '', 'yes', '2022-02-07 06:52:29', '2024-09-02 21:14:28', 0),
(22, '959991748', 1, 68.8, 5900, 5900, 85.76, 'USD', '$', 2, 'Bank Payment', 0, NULL, 0, NULL, 'Citigroup Bank California,\r\ntnx_KDFKF9878KJDF', 'Free Shipping', 0, 0, 0, 3, NULL, NULL, '2022-02-07', NULL, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry \r\nLorem Ipsum is simply dummy\r\ntext of the printing and typesetting industry', 'yes', '2022-02-07 06:55:53', '2022-02-07 06:56:28', 0),
(23, '1608699093', 1, 4.3, 300, 369, 85.76, 'USD', '$', 1, 'Stripe', 1, NULL, 0, NULL, 'txn_3KQr26F56Pb8BOOX1LkgnqNb', 'Inside City', 60, 0, 9, 0, NULL, NULL, NULL, NULL, 0, '', 'yes', '2022-02-08 10:34:28', '2022-02-08 10:34:28', 0),
(24, '450149072', 1, 337.57, 28950, 28950, 85.76, 'USD', '$', 3, 'bKash-bKash', 1, NULL, 0, NULL, NULL, 'Free Shipping', 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1, '', 'yes', '2022-02-16 02:31:04', '2024-09-02 21:14:28', 0),
(25, '236166979', 1, 7.37, 503, 632, 85.76, 'USD', '$', 2, 'Stripe', 1, NULL, 0, NULL, 'txn_3KTdKEF56Pb8BOOX0foNbmEZ', 'Outside City', 120, 0, 9, 0, NULL, NULL, NULL, NULL, 0, '', 'yes', '2022-02-16 02:32:34', '2022-02-16 02:32:34', 0),
(26, '844408633', 1, 1.76, 29.75, 151.2375, 85.76, 'USD', '$', 1, 'Mollie', 1, NULL, 0, NULL, 'tr_Q8fQJgFThT', 'Outside City', 120, 0, 1.4875, 0, NULL, NULL, NULL, NULL, 0, '', 'yes', '2022-02-28 04:15:30', '2022-02-28 04:15:30', 0),
(27, '123305872', 1, 1.7, 85.5, 145.5, 85.76, 'USD', '$', 3, 'bKash-bKash', 1, NULL, 0, NULL, NULL, 'Inside City', 60, 0, 0, 0, NULL, NULL, NULL, NULL, 1, '', 'yes', '2022-03-30 05:01:01', '2024-09-02 21:14:28', 0),
(28, '344452412', 1, 1.95, 46, 167.38, 85.76, 'USD', '$', 2, 'Paymongo', 1, NULL, 0, NULL, 'pi_ycMbEn9zcGMZigGtqUapWPdc', 'Outside City', 120, 0, 1.38, 0, NULL, NULL, NULL, NULL, 0, '', 'yes', '2022-07-03 14:24:39', '2022-07-03 14:24:39', 0),
(29, '848453349', 1, 3.61, 184, 309.43, 85.76, 'USD', '$', 5, 'Paymongo', 1, NULL, 0, NULL, 'pi_PZ9E9noajeYBXUXMrxaoK3K6', 'Outside City', 120, 0, 5.43, 0, NULL, NULL, NULL, NULL, 0, '', 'yes', '2022-07-03 14:27:48', '2022-07-03 14:27:48', 0),
(30, '278084403', 1, 2.69, 166, 230.98, 85.76, 'USD', '$', 3, 'Paymongo', 1, NULL, 0, NULL, 'src_67aUjMWAfB1wVQi8MmzZ1nMf', 'Inside City', 60, 0, 4.98, 0, NULL, NULL, NULL, NULL, 0, '', 'yes', '2022-07-03 14:39:35', '2022-07-03 14:39:35', 0),
(31, '827898069', 1, 4.24, 235, 363.75, 85.76, 'USD', '$', 3, 'Paymongo', 1, NULL, 0, NULL, 'src_wfQyQeUNaeTotFuz6FyWPDij', 'Outside City', 120, 0, 8.75, 0, NULL, NULL, NULL, NULL, 0, '', 'yes', '2022-07-03 14:42:48', '2022-07-03 14:42:48', 0),
(32, '716432128', 1, 2.44, 85, 209.25, 85.76, 'USD', '$', 1, 'Paypal', 1, NULL, 0, NULL, 'PAYID-MMAK5EA3PM85813WR787423K', 'Outside City', 120, 0, 4.25, 0, NULL, NULL, NULL, NULL, 0, '', 'yes', '2022-08-20 09:51:46', '2022-08-20 09:51:46', 0),
(33, '189204355', 1, 3.99, 212.25, 342.4725, 85.76, 'USD', '$', 0, 'Paypal', 1, NULL, 0, NULL, 'PAYID-MMAMHUQ57S076623E5707709', 'Outside City', 120, 0, 10.2225, 0, NULL, NULL, NULL, NULL, 0, '', '1', '2022-08-20 11:23:40', '2022-08-20 11:23:40', 0),
(34, '1557100584', 1, 3.88, 205, 332.85, 85.76, 'USD', '$', 2, 'Paypal', 1, NULL, 0, NULL, 'PAYID-MMAZMLI82877623M10073342', 'Outside City', 120, 0, 7.85, 0, NULL, NULL, NULL, NULL, 0, '', 'yes', '2022-08-21 02:19:55', '2022-08-21 02:19:55', 0),
(35, '590434334', 1, 3.99, 212.25, 342.4725, 85.76, 'USD', '$', 0, 'Paypal', 1, NULL, 0, NULL, 'PAYID-MMAZO5Y7J033011CT6338131', 'Outside City', 120, 0, 10.2225, 0, NULL, NULL, NULL, NULL, 0, '', '1', '2022-08-21 02:25:11', '2022-08-21 02:25:11', 0),
(37, '172284018', NULL, 0, 50, 0, 0, NULL, NULL, 2, 'bKash-bKash', 1, NULL, 0, NULL, NULL, NULL, 50, 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-07-31 18:03:02', '2024-09-02 21:14:28', 101.5),
(38, '415298645', NULL, 0, 120, 0, 0, NULL, NULL, 2, 'aamarpay', 0, NULL, 0, NULL, '5146284', NULL, 100, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-07-31 18:35:06', '2024-07-31 18:35:06', 223.5),
(39, '1189919669', NULL, 0, 120, 0, 0, NULL, NULL, 2, 'aamarpay', 0, NULL, 0, NULL, '8267196', NULL, 100, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-07-31 18:38:01', '2024-07-31 18:38:01', 223.5),
(40, '1489490594', NULL, 0, 120, 0, 0, NULL, NULL, 2, 'aamarpay', 0, NULL, 0, NULL, '2887694', NULL, 100, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-07-31 18:38:39', '2024-07-31 18:38:39', 223.5),
(41, '15017954', NULL, 0, 120, 0, 0, NULL, NULL, 2, 'aamarpay', 0, NULL, 0, NULL, '9401917', NULL, 100, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-07-31 18:40:08', '2024-07-31 18:40:08', 223.5),
(42, '538891762', NULL, 0, 120, 0, 0, NULL, NULL, 2, 'aamarpay', 0, NULL, 0, NULL, '9497291', NULL, 100, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-07-31 18:43:02', '2024-07-31 18:43:02', 223.5),
(43, '75468981', NULL, 0, 120, 0, 0, NULL, NULL, 2, 'aamarpay', 0, NULL, 0, NULL, '6049611', NULL, 100, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-07-31 18:45:03', '2024-07-31 18:45:03', 223.5),
(44, '1137973878', NULL, 0, 120, 0, 0, NULL, NULL, 2, 'aamarpay', 0, NULL, 0, NULL, '3808116', NULL, 100, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-07-31 18:51:38', '2024-07-31 18:51:38', 223.5),
(45, '1691144852', NULL, 0, 120, 0, 0, NULL, NULL, 2, 'aamarpay', 0, NULL, 0, NULL, '5773574', NULL, 100, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-07-31 18:52:37', '2024-07-31 18:52:37', 223.5),
(46, '986035137', NULL, 0, 120, 0, 0, NULL, NULL, 2, 'aamarpay', 0, NULL, 0, NULL, '1562072', NULL, 100, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-07-31 18:55:04', '2024-07-31 18:55:04', 223.5),
(47, '75388362', NULL, 0, 120, 0, 0, NULL, NULL, 2, 'bKash-bKash', 1, NULL, 0, NULL, NULL, NULL, 100, 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-07-31 18:58:28', '2024-09-02 21:14:28', 223.5),
(48, '154573224', NULL, 0, 0, 0, 0, NULL, NULL, 0, 'aamarpay', 0, NULL, 0, NULL, '4624382', NULL, 100, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-07-31 18:58:41', '2024-07-31 18:58:41', 100),
(49, '39206916', NULL, 0, 90, 0, 0, NULL, NULL, 1, 'bKash-bKash', 1, NULL, 0, NULL, NULL, NULL, 10, 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-08-07 13:41:57', '2024-09-02 21:14:28', 100),
(50, '737305783', NULL, 0, 0, 0, 0, NULL, NULL, 0, 'aamarpay', 0, NULL, 0, NULL, '8715287', NULL, 10, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-08-07 13:42:18', '2024-08-07 13:42:18', 10),
(51, '945658307', NULL, 0, 30, 0, 0, NULL, NULL, 1, 'bKash-bKash', 1, '2024-08-07', 0, NULL, NULL, NULL, 10, 0, 0, 3, NULL, NULL, '2024-08-07', NULL, 1, NULL, NULL, '2024-08-07 13:56:34', '2024-09-02 21:14:28', 40.9),
(52, '58546982', NULL, 0, 240, 0, 0, NULL, NULL, 2, 'aamarpay', 0, NULL, 0, NULL, '8576943', NULL, 10, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-08-07 14:01:19', '2024-08-07 14:01:19', 257.2),
(53, '1505278488', NULL, 0, 255, 0, 0, NULL, NULL, 3, 'aamarpay', 0, NULL, 0, NULL, '9673919', NULL, 90, 0, 0, 1, '2024-08-18', NULL, NULL, NULL, 0, NULL, NULL, '2024-08-09 15:43:54', '2024-08-18 21:31:28', 357.75),
(54, '1542402513', NULL, 0, 255, 0, 0, NULL, NULL, 3, 'bKash-bKash', 1, '2024-08-15', 0, NULL, NULL, NULL, 90, 0, 0, 3, NULL, NULL, '2024-08-15', NULL, 1, NULL, NULL, '2024-08-09 15:45:53', '2024-09-02 21:14:28', 357.75),
(55, '346677732', NULL, 0, 50, 0, 0, NULL, NULL, 1, 'bKash-bKash', 1, NULL, 0, NULL, NULL, NULL, 10, 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-08-18 21:35:33', '2024-09-02 21:14:28', 60),
(56, '281956128', NULL, 0, 50, 0, 0, NULL, NULL, 1, 'bKash-bKash', 1, '2024-08-31', 0, NULL, NULL, NULL, 10, 0, 0, 2, '2024-08-31', '2024-08-31', '2024-08-31', NULL, 1, NULL, NULL, '2024-08-31 01:35:57', '2024-09-02 21:14:28', 60),
(57, '1304993328', NULL, 0, 30, 0, 0, NULL, NULL, 1, 'aamarpay', 0, NULL, 0, NULL, '7082890', NULL, 10, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-09-02 21:03:27', '2024-09-02 21:03:27', 40.9),
(58, '1556576267', NULL, 0, 30, 0, 0, NULL, NULL, 1, 'aamarpay', 0, NULL, 0, NULL, '1873251', NULL, 10, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-09-02 21:05:55', '2024-09-02 21:05:55', 40.9),
(59, '342281443', NULL, 0, 30, 0, 0, NULL, NULL, 1, 'aamarpay', 0, NULL, 0, NULL, '1128121', NULL, 10, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-09-02 21:10:12', '2024-09-02 21:10:12', 40.9),
(60, '448086652', NULL, 0, 30, 0, 0, NULL, NULL, 1, 'aamarpay', 0, NULL, 0, NULL, '4377171', NULL, 10, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-09-02 21:11:29', '2024-09-02 21:11:29', 40.9),
(61, '323126217', NULL, 0, 30, 0, 0, NULL, NULL, 1, 'aamarpay', 0, NULL, 0, NULL, '7782068', NULL, 10, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-09-02 21:15:28', '2024-09-02 21:15:28', 40.9),
(62, '905802351', NULL, 0, 140, 0, 0, NULL, NULL, 2, 'aamarpay', 0, NULL, 0, NULL, '9599429', NULL, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-10-27 18:14:21', '2024-10-27 18:14:21', 261.5),
(63, '638724849', NULL, 0, 140, 0, 0, NULL, NULL, 2, 'aamarpay', 0, NULL, 0, NULL, '5577305', NULL, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-10-27 18:15:07', '2024-10-27 18:15:07', 261.5),
(64, '1550201890', NULL, 0, 140, 0, 0, NULL, NULL, 2, 'Cash on Delivery', 0, NULL, 0, NULL, NULL, NULL, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-10-27 18:15:20', '2024-10-27 18:15:20', 261.5),
(67, '722733376', NULL, 0, 33, 0, 0, NULL, NULL, 1, 'Cash on Delivery', 0, NULL, 0, NULL, NULL, NULL, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-10-27 18:41:39', '2024-10-27 18:41:39', 153.99),
(68, '1597389239', 21, 0, 50, 0, 0, NULL, NULL, 1, 'Cash on Delivery', 0, NULL, 0, NULL, NULL, NULL, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 'Test Product', NULL, '2024-10-27 19:51:26', '2024-10-27 19:51:26', 171.5),
(69, '724208059', 21, 0, 90, 0, 0, NULL, NULL, 1, 'Cash on Delivery', 0, NULL, 0, NULL, NULL, NULL, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-10-27 19:53:01', '2024-10-27 19:53:01', 210),
(70, '517729874', 21, 0, 20, 0, 0, NULL, NULL, 1, 'Cash on Delivery', 0, NULL, 0, NULL, NULL, NULL, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 'Lorem ipsum dolor sit amet consectetur adipiscing elit, metus interdum tincidunt himenaeos auctor lobortis sed vehicula, nulla aliquam sodales', NULL, '2024-10-27 19:55:34', '2024-10-27 19:55:34', 140.6),
(71, '1583406377', 21, 0, 23, 0, 0, NULL, NULL, 1, 'Cash on Delivery', 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-10-27 20:09:03', '2024-10-27 20:09:03', 23),
(72, '934143114', 21, 0, 23, 0, 0, NULL, NULL, 1, 'Cash on Delivery', 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2024-10-27 20:11:26', '2024-10-27 20:11:26', 23);

-- --------------------------------------------------------

--
-- Table structure for table `order_addresses`
--

CREATE TABLE `order_addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int NOT NULL,
  `billing_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_addresses`
--

INSERT INTO `order_addresses` (`id`, `order_id`, `billing_name`, `billing_email`, `billing_phone`, `billing_address`, `billing_country`, `billing_state`, `billing_city`, `billing_zip_code`, `shipping_name`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_country`, `shipping_state`, `shipping_city`, `shipping_zip_code`, `created_at`, `updated_at`) VALUES
(19, 19, 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United Stat', 'California', 'Los Angeles', '6521', 'John Doe', 'user@gmail.com', '123-965-8965', 'Los Angeles, CA, USA', 'United State', 'Florida', 'Florida City', '6325', '2022-02-07 06:40:04', '2022-02-07 06:40:04'),
(20, 20, 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United Stat', 'California', 'Los Angeles', '6521', 'John Doe', 'user@gmail.com', '123-965-8965', 'Los Angeles, CA, USA', 'United State', 'Florida', 'Florida City', '6325', '2022-02-07 06:47:09', '2022-02-07 06:47:09'),
(21, 21, 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United Stat', 'California', 'Los Angeles', '6521', 'John Doe', 'user@gmail.com', '123-965-8965', 'Los Angeles, CA, USA', 'United State', 'Florida', 'Florida City', '6325', '2022-02-07 06:52:30', '2022-02-07 06:52:30'),
(22, 22, 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United Stat', 'California', 'Los Angeles', '6521', 'John Doe', 'user@gmail.com', '123-965-8965', 'Los Angeles, CA, USA', 'United State', 'Florida', 'Florida City', '6325', '2022-02-07 06:55:54', '2022-02-07 06:55:54'),
(23, 23, 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United Stat', 'California', 'Los Angeles', '6521', 'John Doe', 'user@gmail.com', '123-965-8965', 'Los Angeles, CA, USA', 'United State', 'Florida', 'Florida City', '6325', '2022-02-08 10:34:28', '2022-02-08 10:34:28'),
(24, 24, 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United Stat', 'California', 'Los Angeles', '6521', 'John Doe', 'user@gmail.com', '123-965-8965', 'Los Angeles, CA, USA', 'United State', 'Florida', 'Florida City', '6325', '2022-02-16 02:31:04', '2022-02-16 02:31:04'),
(25, 25, 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United Stat', 'California', 'Los Angeles', '6521', 'John Doe', 'user@gmail.com', '123-965-8965', 'Los Angeles, CA, USA', 'United State', 'Florida', 'Florida City', '6325', '2022-02-16 02:32:34', '2022-02-16 02:32:34'),
(26, 26, 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United Stat', 'California', 'Los Angeles', '6521', 'John Doe', 'user@gmail.com', '123-965-8965', 'Los Angeles, CA, USA', 'United State', 'Florida', 'Florida City', '6325', '2022-02-28 04:15:30', '2022-02-28 04:15:30'),
(27, 27, 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United Stat', 'California', 'Los Angeles', '6521', 'John Doe', 'user@gmail.com', '123-965-8965', 'Los Angeles, CA, USA', 'United State', 'Florida', 'Florida City', '6325', '2022-03-30 05:01:01', '2022-03-30 05:01:01'),
(28, 28, 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United Stat', '', '', '6521', 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United State', '', '', '6521', '2022-07-03 14:24:39', '2022-07-03 14:24:39'),
(29, 29, 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United Stat', '', '', '6521', 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United State', '', '', '6521', '2022-07-03 14:27:48', '2022-07-03 14:27:48'),
(30, 30, 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United Stat', '', '', '6521', 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United State', '', '', '6521', '2022-07-03 14:39:35', '2022-07-03 14:39:35'),
(31, 31, 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United Stat', '', '', '6521', 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United State', '', '', '6521', '2022-07-03 14:42:48', '2022-07-03 14:42:48'),
(32, 32, 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United Stat', '', '', '6521', 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United State', '', '', '6521', '2022-08-20 09:51:46', '2022-08-20 09:51:46'),
(33, 33, 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United Stat', '', '', '6521', 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United State', '', '', '6521', '2022-08-20 11:23:45', '2022-08-20 11:23:45'),
(34, 34, 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United Stat', '', '', '6521', 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United State', '', '', '6521', '2022-08-21 02:19:56', '2022-08-21 02:19:56'),
(35, 35, 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United Stat', '', '', '6521', 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 'United State', '', '', '6521', '2022-08-21 02:25:11', '2022-08-21 02:25:11'),
(36, 37, 'Rizvi', NULL, '01600685215', 'Chittagong Road', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-07-31 18:03:02', '2024-07-31 18:03:02'),
(37, 38, 'Weaving Park', NULL, '01600685215', 'Chittagong Road', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-07-31 18:35:06', '2024-07-31 18:35:06'),
(38, 39, 'Weaving Park', NULL, '01600685215', 'Chittagong Road', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-07-31 18:38:01', '2024-07-31 18:38:01'),
(39, 40, 'Weaving Park', NULL, '01600685215', 'Chittagong Road', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-07-31 18:38:39', '2024-07-31 18:38:39'),
(40, 41, 'Weaving Park', NULL, '01600685215', 'Chittagong Road', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-07-31 18:40:08', '2024-07-31 18:40:08'),
(41, 42, 'Weaving Park', NULL, '01600685215', 'Chittagong Road', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-07-31 18:43:03', '2024-07-31 18:43:03'),
(42, 43, 'Weaving Park', NULL, '01600685215', 'Chittagong Road', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-07-31 18:45:03', '2024-07-31 18:45:03'),
(43, 44, 'Weaving Park', NULL, '01600685215', 'Chittagong Road', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-07-31 18:51:38', '2024-07-31 18:51:38'),
(44, 45, 'Weaving Park', NULL, '01600685215', 'Chittagong Road', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-07-31 18:52:37', '2024-07-31 18:52:37'),
(45, 46, 'Weaving Park', NULL, '01600685215', 'Chittagong Road', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-07-31 18:55:04', '2024-07-31 18:55:04'),
(46, 47, 'Weaving Park', NULL, '01600685215', 'Chittagong Road', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-07-31 18:58:28', '2024-07-31 18:58:28'),
(47, 48, 'Weaving Park', NULL, '01600685215', 'Chittagong Road', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-07-31 18:58:41', '2024-07-31 18:58:41'),
(48, 49, 'Mohi Uddin', NULL, '01236547896', 'Sikder Bari, Baisara', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-08-07 13:41:57', '2024-08-07 13:41:57'),
(49, 50, 'Mohi Uddin', NULL, '01236547896', 'Sikder Bari, Baisara', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-08-07 13:42:18', '2024-08-07 13:42:18'),
(50, 51, 'Mohi Uddin', NULL, '01236547896', 'Chittagong Road, Siddhirganj, Narayanganj', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-08-07 13:56:34', '2024-08-07 13:56:34'),
(51, 52, 'Mohi Uddin', NULL, '01626147281', 'Chittagong Road, Siddhirganj, Narayanganj', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-08-07 14:01:19', '2024-08-07 14:01:19'),
(52, 53, 'cftjhjkl', NULL, '01322406920', 'uytguiyuiuio', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-08-09 15:43:54', '2024-08-09 15:43:54'),
(53, 54, 'cftjhjkl', NULL, '01322406920', 'uytguiyuiuio', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-08-09 15:45:53', '2024-08-09 15:45:53'),
(54, 55, 'KACHUA', NULL, '01727370209', 'Khilkhet, Dhaka- 1229.', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-08-18 21:35:33', '2024-08-18 21:35:33'),
(55, 56, 'afsfgdg', NULL, 'fgsgsf', 'sgdfs', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-08-31 01:35:57', '2024-08-31 01:35:57'),
(56, 57, 'aratsr', NULL, 'gfsdrg', 'gfdgr', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-09-02 21:03:27', '2024-09-02 21:03:27'),
(57, 58, 'gsdg', NULL, 'dhg', 'ghddfg', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-09-02 21:05:55', '2024-09-02 21:05:55'),
(58, 59, '6uuu5u', NULL, 'iluolo', 'lyo9ou', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-09-02 21:10:12', '2024-09-02 21:10:12'),
(59, 60, 'yutjuk', NULL, 'ukuvkv', 'kukuyi', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-09-02 21:11:29', '2024-09-02 21:11:29'),
(60, 61, 'dgfgdf', NULL, 'fgdfgd', 'dfgdgf', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-09-02 21:15:28', '2024-09-02 21:15:28'),
(61, 62, 'Rizvi', NULL, '0189837462', 'Dhaka', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-10-27 18:14:21', '2024-10-27 18:14:21'),
(62, 63, 'Rizvi', NULL, '0189837462', 'Dhaka', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-10-27 18:15:07', '2024-10-27 18:15:07'),
(63, 64, 'Rizvi', NULL, '0189837462', 'Dhaka', NULL, NULL, NULL, NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, NULL, NULL, NULL, '2024-10-27 18:15:20', '2024-10-27 18:15:20'),
(64, 67, 'Rizvi Ahmed', NULL, '01234', 'Tower', NULL, 'BANDARBAN', 'BANDARBAN SADAR', NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, 'BANDARBAN', 'BANDARBAN SADAR', NULL, '2024-10-27 18:41:39', '2024-10-27 18:41:39'),
(65, 68, 'Rizvi Ahmed', NULL, '01740497649', 'Modina Tower', NULL, 'BARGUNA', 'BARGUNA SADAR', NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, 'BARGUNA', 'BARGUNA SADAR', NULL, '2024-10-27 19:51:26', '2024-10-27 19:51:26'),
(66, 69, 'Rizvi Ahmed', NULL, '0189837462', 'Modina Tower', NULL, 'BARGUNA', 'BARGUNA SADAR', NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, 'BARGUNA', 'BARGUNA SADAR', NULL, '2024-10-27 19:53:01', '2024-10-27 19:53:01'),
(67, 70, 'Rizvi Ahmed', NULL, '01740497649', 'Modina Tower', NULL, 'BARISAL', 'BANARI PARA', NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, 'BARISAL', 'BANARI PARA', NULL, '2024-10-27 19:55:34', '2024-10-27 19:55:34'),
(68, 71, 'Rizvi Ahmed', NULL, '01740497649', 'Tower', NULL, 'BARISAL', 'BANARI PARA', NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, 'BARISAL', 'BANARI PARA', NULL, '2024-10-27 20:09:03', '2024-10-27 20:09:03'),
(69, 72, 'Rizvi Ahmed', NULL, '01740497649', 'Tower', NULL, 'BARISAL', 'BANARI PARA', NULL, 'Rizvi', NULL, '01740497649', 'Dhaka', NULL, 'BARISAL', 'BANARI PARA', NULL, '2024-10-27 20:11:26', '2024-10-27 20:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `seller_id` int NOT NULL DEFAULT '0',
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` double NOT NULL DEFAULT '0',
  `vat` double NOT NULL DEFAULT '0',
  `qty` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `seller_id`, `product_name`, `unit_price`, `vat`, `qty`, `created_at`, `updated_at`) VALUES
(57, 19, 7, 1, 'Samsung Galaxy A52 (8/128 GB)', 3500, 0, 1, '2022-02-07 06:40:03', '2022-02-07 06:40:03'),
(58, 19, 9, 1, 'Apple iPhone 12 Pro Max', 20, 1, 1, '2022-02-07 06:40:03', '2022-02-07 06:40:03'),
(59, 19, 23, 3, 'Suzuki NEX Crossover', 52000, 1560, 1, '2022-02-07 06:40:04', '2022-02-07 06:40:04'),
(60, 19, 24, 3, 'Fast Flaying High Quality Radio/Remote Controlled Drone Camera', 28000, 0, 1, '2022-02-07 06:40:04', '2022-02-07 06:40:04'),
(61, 20, 23, 3, 'Suzuki NEX Crossover', 52000, 1560, 1, '2022-02-07 06:47:08', '2022-02-07 06:47:08'),
(62, 20, 22, 3, 'Suzuki Intruder M1800R', 85000, 4250, 1, '2022-02-07 06:47:09', '2022-02-07 06:47:09'),
(63, 20, 10, 2, 'New Fashionable Jeans shirt', 500, 15, 1, '2022-02-07 06:47:09', '2022-02-07 06:47:09'),
(64, 20, 11, 2, 'Stylish & Fashionable Trendy Cotton Ball Printed Long Sleeve Formal Shirt For Men', 850, 25.5, 1, '2022-02-07 06:47:09', '2022-02-07 06:47:09'),
(65, 21, 13, 0, 'Lenovo 15s-fq2581TU Core i3 11th Gen 15.6\" FHD Laptop', 35000, 1050, 1, '2022-02-07 06:52:29', '2022-02-07 06:52:29'),
(66, 21, 2, 0, 'Canon Eos 4000D 18MP 2.7inch Display With 18-55mm Lens Dslr Camera', 2303, 0, 1, '2022-02-07 06:52:30', '2022-02-07 06:52:30'),
(67, 21, 15, 0, 'Intel NEW Desktop Computer', 70000, 3500, 1, '2022-02-07 06:52:30', '2022-02-07 06:52:30'),
(68, 22, 4, 0, 'Suzuki Gixxer SF 150', 5400, 0, 1, '2022-02-07 06:55:53', '2022-02-07 06:55:53'),
(69, 22, 16, 0, 'A4Tech Wireless Mouse', 500, 0, 1, '2022-02-07 06:55:54', '2022-02-07 06:55:54'),
(70, 23, 32, 0, 'Fashion Shoes For Men Casual Shoes Comfortable', 300, 9, 1, '2022-02-08 10:34:28', '2022-02-08 10:34:28'),
(71, 24, 27, 0, 'Ladies Crossbody Shoulder Bag', 500, 0, 1, '2022-02-16 02:31:04', '2022-02-16 02:31:04'),
(72, 24, 25, 4, 'Bogesi Black High quality Artificial Leather Wallet For Men', 450, 0, 1, '2022-02-16 02:31:04', '2022-02-16 02:31:04'),
(73, 24, 24, 3, 'Fast Flaying High Quality Radio/Remote Controlled Drone Camera', 28000, 0, 1, '2022-02-16 02:31:04', '2022-02-16 02:31:04'),
(74, 25, 33, 0, 'Winter Leather Jacket', 203, 0, 1, '2022-02-16 02:32:34', '2022-02-16 02:32:34'),
(75, 25, 32, 0, 'Fashion Shoes For Men Casual Shoes Comfortable', 300, 9, 1, '2022-02-16 02:32:34', '2022-02-16 02:32:34'),
(76, 26, 22, 3, 'Suzuki Intruder M1800R', 29.75, 1.4875, 1, '2022-02-28 04:15:30', '2022-02-28 04:15:30'),
(77, 27, 24, 3, 'High Quality Drone Camera', 28, 0, 1, '2022-03-30 05:01:01', '2022-03-30 05:01:01'),
(78, 27, 16, 0, 'A4Tech Wireless Mouse', 32.5, 0, 1, '2022-03-30 05:01:01', '2022-03-30 05:01:01'),
(79, 27, 33, 0, 'Winter Leather Jacket', 25, 0, 1, '2022-03-30 05:01:01', '2022-03-30 05:01:01'),
(80, 28, 32, 0, 'Casual  Fashion Shoes For Men', 30, 0.9, 1, '2022-07-03 14:24:39', '2022-07-03 14:24:39'),
(81, 28, 17, 0, 'A4Tech Wireless Mouse And Keyboard', 16, 0.48, 1, '2022-07-03 14:24:39', '2022-07-03 14:24:39'),
(82, 29, 32, 0, 'Casual  Fashion Shoes For Men', 30, 0.9, 1, '2022-07-03 14:27:48', '2022-07-03 14:27:48'),
(83, 29, 17, 0, 'A4Tech Wireless Mouse And Keyboard', 16, 0.48, 1, '2022-07-03 14:27:48', '2022-07-03 14:27:48'),
(84, 29, 33, 0, 'Winter Leather Jacket', 23, 0, 1, '2022-07-03 14:27:48', '2022-07-03 14:27:48'),
(85, 29, 14, 0, 'Asus 240 G7 10th Gen Intel Core i3 1005G1', 30, 1.5, 1, '2022-07-03 14:27:48', '2022-07-03 14:27:48'),
(86, 29, 11, 2, 'Cotton Ball Printed Formal Shirt For Men', 85, 2.55, 1, '2022-07-03 14:27:48', '2022-07-03 14:27:48'),
(87, 30, 32, 0, 'Casual  Fashion Shoes For Men', 30, 0.9, 1, '2022-07-03 14:39:35', '2022-07-03 14:39:35'),
(88, 30, 17, 0, 'A4Tech Wireless Mouse And Keyboard', 16, 0.48, 1, '2022-07-03 14:39:35', '2022-07-03 14:39:35'),
(89, 30, 1, 0, 'Canon Eos 80D DSLR Camera', 120, 3.6, 1, '2022-07-03 14:39:35', '2022-07-03 14:39:35'),
(90, 31, 1, 0, 'Canon Eos 80D DSLR Camera', 120, 3.6, 1, '2022-07-03 14:42:48', '2022-07-03 14:42:48'),
(91, 31, 22, 3, 'Suzuki Intruder M1800R', 85, 4.25, 1, '2022-07-03 14:42:48', '2022-07-03 14:42:48'),
(92, 31, 32, 0, 'Casual  Fashion Shoes For Men', 30, 0.9, 1, '2022-07-03 14:42:48', '2022-07-03 14:42:48'),
(93, 32, 22, 3, 'Suzuki Intruder M1800R', 85, 4.25, 1, '2022-08-20 09:51:46', '2022-08-20 09:51:46'),
(94, 33, 22, 3, 'Suzuki Intruder M1800R', 55.25, 8.2875, 3, '2022-08-20 11:23:40', '2022-08-20 11:23:40'),
(95, 33, 32, 0, 'Casual  Fashion Shoes For Men', 19.5, 0.585, 1, '2022-08-20 11:23:41', '2022-08-20 11:23:41'),
(96, 33, 9, 1, 'Apple iPhone 12 Pro Max', 27, 1.35, 1, '2022-08-20 11:23:44', '2022-08-20 11:23:44'),
(97, 34, 22, 3, 'Suzuki Intruder M1800R', 85, 4.25, 1, '2022-08-21 02:19:55', '2022-08-21 02:19:55'),
(98, 34, 1, 0, 'Canon Eos 80D DSLR Camera', 120, 3.6, 1, '2022-08-21 02:19:56', '2022-08-21 02:19:56'),
(99, 35, 22, 3, 'Suzuki Intruder M1800R', 55.25, 8.2875, 3, '2022-08-21 02:25:11', '2022-08-21 02:25:11'),
(100, 35, 32, 0, 'Casual  Fashion Shoes For Men', 19.5, 0.585, 1, '2022-08-21 02:25:11', '2022-08-21 02:25:11'),
(101, 35, 9, 1, 'Apple iPhone 12 Pro Max', 27, 1.35, 1, '2022-08-21 02:25:11', '2022-08-21 02:25:11'),
(104, 37, 17, 0, 'A4Tech Wireless Mouse And Keyboard', 16, 0.48, 1, '2024-07-31 18:03:02', '2024-07-31 18:03:02'),
(105, 37, 29, 0, 'Rainbow Strawberry Pop-IT Toy', 34, 1.02, 1, '2024-07-31 18:03:02', '2024-07-31 18:03:02'),
(106, 38, 21, 0, 'M11 TWS Earphone With LED Digital Display', 70, 3.5, 1, '2024-07-31 18:35:06', '2024-07-31 18:35:06'),
(107, 38, 20, 0, 'Digital Wireless Bluetooth Headphone', 50, 0, 1, '2024-07-31 18:35:06', '2024-07-31 18:35:06'),
(108, 39, 21, 0, 'M11 TWS Earphone With LED Digital Display', 70, 3.5, 1, '2024-07-31 18:38:01', '2024-07-31 18:38:01'),
(109, 39, 20, 0, 'Digital Wireless Bluetooth Headphone', 50, 0, 1, '2024-07-31 18:38:01', '2024-07-31 18:38:01'),
(110, 40, 21, 0, 'M11 TWS Earphone With LED Digital Display', 70, 3.5, 1, '2024-07-31 18:38:39', '2024-07-31 18:38:39'),
(111, 40, 20, 0, 'Digital Wireless Bluetooth Headphone', 50, 0, 1, '2024-07-31 18:38:39', '2024-07-31 18:38:39'),
(112, 41, 21, 0, 'M11 TWS Earphone With LED Digital Display', 70, 3.5, 1, '2024-07-31 18:40:08', '2024-07-31 18:40:08'),
(113, 41, 20, 0, 'Digital Wireless Bluetooth Headphone', 50, 0, 1, '2024-07-31 18:40:08', '2024-07-31 18:40:08'),
(114, 42, 21, 0, 'M11 TWS Earphone With LED Digital Display', 70, 3.5, 1, '2024-07-31 18:43:02', '2024-07-31 18:43:02'),
(115, 42, 20, 0, 'Digital Wireless Bluetooth Headphone', 50, 0, 1, '2024-07-31 18:43:02', '2024-07-31 18:43:02'),
(116, 43, 21, 0, 'M11 TWS Earphone With LED Digital Display', 70, 3.5, 1, '2024-07-31 18:45:03', '2024-07-31 18:45:03'),
(117, 43, 20, 0, 'Digital Wireless Bluetooth Headphone', 50, 0, 1, '2024-07-31 18:45:03', '2024-07-31 18:45:03'),
(118, 44, 21, 0, 'M11 TWS Earphone With LED Digital Display', 70, 3.5, 1, '2024-07-31 18:51:38', '2024-07-31 18:51:38'),
(119, 44, 20, 0, 'Digital Wireless Bluetooth Headphone', 50, 0, 1, '2024-07-31 18:51:38', '2024-07-31 18:51:38'),
(120, 45, 21, 0, 'M11 TWS Earphone With LED Digital Display', 70, 3.5, 1, '2024-07-31 18:52:37', '2024-07-31 18:52:37'),
(121, 45, 20, 0, 'Digital Wireless Bluetooth Headphone', 50, 0, 1, '2024-07-31 18:52:37', '2024-07-31 18:52:37'),
(122, 46, 21, 0, 'M11 TWS Earphone With LED Digital Display', 70, 3.5, 1, '2024-07-31 18:55:04', '2024-07-31 18:55:04'),
(123, 46, 20, 0, 'Digital Wireless Bluetooth Headphone', 50, 0, 1, '2024-07-31 18:55:04', '2024-07-31 18:55:04'),
(124, 47, 21, 0, 'M11 TWS Earphone With LED Digital Display', 70, 3.5, 1, '2024-07-31 18:58:28', '2024-07-31 18:58:28'),
(125, 47, 20, 0, 'Digital Wireless Bluetooth Headphone', 50, 0, 1, '2024-07-31 18:58:28', '2024-07-31 18:58:28'),
(126, 49, 34, 0, 'Keaton Rosales', 90, 0, 1, '2024-08-07 13:41:57', '2024-08-07 13:41:57'),
(127, 51, 12, 0, 'Hp 240 G7 10Th Gen Intel Core I3 1005G1', 30, 0.9, 1, '2024-08-07 13:56:34', '2024-08-07 13:56:34'),
(128, 52, 1, 0, 'Canon Eos 80D DSLR Camera', 120, 7.2, 2, '2024-08-07 14:01:19', '2024-08-07 14:01:19'),
(129, 53, 22, 3, 'Suzuki Intruder M1800R', 85, 12.75, 3, '2024-08-09 15:43:54', '2024-08-09 15:43:54'),
(130, 54, 22, 3, 'Suzuki Intruder M1800R', 85, 12.75, 3, '2024-08-09 15:45:53', '2024-08-09 15:45:53'),
(131, 55, 16, 0, 'A4Tech Wireless Mouse', 50, 0, 1, '2024-08-18 21:35:33', '2024-08-18 21:35:33'),
(132, 56, 16, 0, 'A4Tech Wireless Mouse', 50, 0, 1, '2024-08-31 01:35:57', '2024-08-31 01:35:57'),
(133, 57, 12, 0, 'Hp 240 G7 10Th Gen Intel Core I3 1005G1', 30, 0.9, 1, '2024-09-02 21:03:27', '2024-09-02 21:03:27'),
(134, 58, 12, 0, 'Hp 240 G7 10Th Gen Intel Core I3 1005G1', 30, 0.9, 1, '2024-09-02 21:05:55', '2024-09-02 21:05:55'),
(135, 59, 12, 0, 'Hp 240 G7 10Th Gen Intel Core I3 1005G1', 30, 0.9, 1, '2024-09-02 21:10:12', '2024-09-02 21:10:12'),
(136, 60, 12, 0, 'Hp 240 G7 10Th Gen Intel Core I3 1005G1', 30, 0.9, 1, '2024-09-02 21:11:29', '2024-09-02 21:11:29'),
(137, 61, 12, 0, 'Hp 240 G7 10Th Gen Intel Core I3 1005G1', 30, 0.9, 1, '2024-09-02 21:15:28', '2024-09-02 21:15:28'),
(138, 62, 34, 0, 'Keaton Rosales', 90, 0, 1, '2024-10-27 18:14:21', '2024-10-27 18:14:21'),
(139, 62, 10, 2, 'New Fashionable Jeans shirt', 50, 1.5, 1, '2024-10-27 18:14:21', '2024-10-27 18:14:21'),
(140, 63, 34, 0, 'Keaton Rosales', 90, 0, 1, '2024-10-27 18:15:07', '2024-10-27 18:15:07'),
(141, 63, 10, 2, 'New Fashionable Jeans shirt', 50, 1.5, 1, '2024-10-27 18:15:07', '2024-10-27 18:15:07'),
(142, 64, 34, 0, 'Keaton Rosales', 90, 0, 1, '2024-10-27 18:15:20', '2024-10-27 18:15:20'),
(143, 64, 10, 2, 'New Fashionable Jeans shirt', 50, 1.5, 1, '2024-10-27 18:15:20', '2024-10-27 18:15:20'),
(146, 67, 13, 0, 'Lenovo Core i3 11th Gen Laptop', 33, 0.99, 1, '2024-10-27 18:41:39', '2024-10-27 18:41:39'),
(147, 68, 18, 0, 'Soft Focus Finger Typing Keyboard', 50, 1.5, 1, '2024-10-27 19:51:26', '2024-10-27 19:51:26'),
(148, 69, 34, 0, 'Keaton Rosales', 90, 0, 1, '2024-10-27 19:53:01', '2024-10-27 19:53:01'),
(149, 70, 31, 0, 'Epson LQ310 Dot Matrix Printer-Black', 20, 0.6, 1, '2024-10-27 19:55:34', '2024-10-27 19:55:34'),
(150, 71, 33, 0, 'Winter Leather Jacket', 23, 0, 1, '2024-10-27 20:09:03', '2024-10-27 20:09:03'),
(151, 72, 33, 0, 'Winter Leather Jacket', 23, 0, 1, '2024-10-27 20:11:26', '2024-10-27 20:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `order_product_variants`
--

CREATE TABLE `order_product_variants` (
  `id` bigint UNSIGNED NOT NULL,
  `order_product_id` int NOT NULL,
  `product_id` int NOT NULL,
  `variant_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_price` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_product_variants`
--

INSERT INTO `order_product_variants` (`id`, `order_product_id`, `product_id`, `variant_name`, `variant_value`, `variant_price`, `created_at`, `updated_at`) VALUES
(18, 64, 11, 'Size', 'Small', 0, '2022-02-07 06:47:09', '2022-02-07 06:47:09'),
(19, 65, 13, 'RAM', '2GB', 0, '2022-02-07 06:52:29', '2022-02-07 06:52:29'),
(20, 66, 2, 'Color', 'Red', 3, '2022-02-07 06:52:30', '2022-02-07 06:52:30'),
(21, 74, 33, 'Color', 'Black', 3, '2022-02-16 02:32:34', '2022-02-16 02:32:34'),
(22, 74, 33, 'Size', 'Small', 0, '2022-02-16 02:32:34', '2022-02-16 02:32:34'),
(23, 79, 33, 'Color', 'Navy Blue', 0, '2022-03-30 05:01:01', '2022-03-30 05:01:01'),
(24, 79, 33, 'Size', 'Medium', 5, '2022-03-30 05:01:01', '2022-03-30 05:01:01'),
(25, 84, 33, 'Color', 'Black', 3, '2022-07-03 14:27:48', '2022-07-03 14:27:48'),
(26, 84, 33, 'Size', 'Small', 0, '2022-07-03 14:27:48', '2022-07-03 14:27:48'),
(27, 86, 11, 'Size', 'Small', 0, '2022-07-03 14:27:48', '2022-07-03 14:27:48'),
(28, 96, 9, 'Camera', '68PX', 3, '2022-08-20 11:23:45', '2022-08-20 11:23:45'),
(29, 96, 9, 'RAM', '68GB', 1, '2022-08-20 11:23:45', '2022-08-20 11:23:45'),
(30, 96, 9, 'Memory', '64GB', 3, '2022-08-20 11:23:45', '2022-08-20 11:23:45'),
(31, 101, 9, 'Camera', '68PX', 3, '2022-08-21 02:25:11', '2022-08-21 02:25:11'),
(32, 101, 9, 'RAM', '68GB', 1, '2022-08-21 02:25:11', '2022-08-21 02:25:11'),
(33, 101, 9, 'Memory', '64GB', 3, '2022-08-21 02:25:11', '2022-08-21 02:25:11'),
(34, 126, 34, '18', 'Green', 0, '2024-08-07 13:41:57', '2024-08-07 13:41:57'),
(35, 127, 12, '7', '2GB', 0, '2024-08-07 13:56:34', '2024-08-07 13:56:34'),
(36, 131, 16, '20', 'Red', 0, '2024-08-18 21:35:33', '2024-08-18 21:35:33'),
(37, 131, 16, '21', 'xs', 0, '2024-08-18 21:35:33', '2024-08-18 21:35:33'),
(38, 132, 16, '20', 'Red', 0, '2024-08-31 01:35:57', '2024-08-31 01:35:57'),
(39, 132, 16, '21', 'xs', 0, '2024-08-31 01:35:57', '2024-08-31 01:35:57'),
(40, 133, 12, '7', '2GB', 0, '2024-09-02 21:03:27', '2024-09-02 21:03:27'),
(41, 133, 12, '8', 'Black', 0, '2024-09-02 21:03:27', '2024-09-02 21:03:27'),
(42, 133, 12, '9', '15\"', 0, '2024-09-02 21:03:27', '2024-09-02 21:03:27'),
(43, 134, 12, '7', '2GB', 0, '2024-09-02 21:05:55', '2024-09-02 21:05:55'),
(44, 134, 12, '8', 'Black', 0, '2024-09-02 21:05:55', '2024-09-02 21:05:55'),
(45, 134, 12, '9', '15\"', 0, '2024-09-02 21:05:55', '2024-09-02 21:05:55'),
(46, 135, 12, '7', '2GB', 0, '2024-09-02 21:10:12', '2024-09-02 21:10:12'),
(47, 135, 12, '8', 'Black', 0, '2024-09-02 21:10:12', '2024-09-02 21:10:12'),
(48, 135, 12, '9', '15\"', 0, '2024-09-02 21:10:12', '2024-09-02 21:10:12'),
(49, 136, 12, '7', '2GB', 0, '2024-09-02 21:11:29', '2024-09-02 21:11:29'),
(50, 136, 12, '8', 'Black', 0, '2024-09-02 21:11:29', '2024-09-02 21:11:29'),
(51, 136, 12, '9', '15\"', 0, '2024-09-02 21:11:29', '2024-09-02 21:11:29'),
(52, 137, 12, '7', '2GB', 0, '2024-09-02 21:15:28', '2024-09-02 21:15:28'),
(53, 137, 12, '8', 'Black', 0, '2024-09-02 21:15:28', '2024-09-02 21:15:28'),
(54, 137, 12, '9', '15\"', 0, '2024-09-02 21:15:28', '2024-09-02 21:15:28'),
(55, 138, 34, '18', 'Green', 0, '2024-10-27 18:14:21', '2024-10-27 18:14:21'),
(56, 138, 34, '19', 'xs', 0, '2024-10-27 18:14:21', '2024-10-27 18:14:21'),
(57, 140, 34, '18', 'Green', 0, '2024-10-27 18:15:07', '2024-10-27 18:15:07'),
(58, 140, 34, '19', 'xs', 0, '2024-10-27 18:15:07', '2024-10-27 18:15:07'),
(59, 142, 34, '18', 'Green', 0, '2024-10-27 18:15:20', '2024-10-27 18:15:20'),
(60, 142, 34, '19', 'xs', 0, '2024-10-27 18:15:20', '2024-10-27 18:15:20'),
(63, 146, 13, '10', '2GB', 0, '2024-10-27 18:41:39', '2024-10-27 18:41:39'),
(64, 148, 34, '18', 'Green', 0, '2024-10-27 19:53:01', '2024-10-27 19:53:01'),
(65, 148, 34, '19', 'xs', 0, '2024-10-27 19:53:01', '2024-10-27 19:53:01'),
(66, 150, 33, '11', 'Black', 3, '2024-10-27 20:09:03', '2024-10-27 20:09:03'),
(67, 150, 33, '12', 'Small', 0, '2024-10-27 20:09:03', '2024-10-27 20:09:03'),
(68, 151, 33, '11', 'Black', 3, '2024-10-27 20:11:26', '2024-10-27 20:11:26'),
(69, 151, 33, '12', 'Small', 0, '2024-10-27 20:11:26', '2024-10-27 20:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paymongo_payments`
--

CREATE TABLE `paymongo_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `currency_rate` double NOT NULL DEFAULT '1',
  `country_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paymongo_payments`
--

INSERT INTO `paymongo_payments` (`id`, `secret_key`, `public_key`, `status`, `currency_rate`, `country_code`, `currency_code`, `image`, `created_at`, `updated_at`) VALUES
(1, 'sk_test_TUwj85sA6XTn7nHzmP23dg36', 'pk_test_z9xACSbhH2EuxVdFaxuY8Waf', 1, 55.07, 'PH', 'PHP', '62c01dbd46dc01656757693.jpg', NULL, '2022-07-03 10:06:24');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_payments`
--

CREATE TABLE `paypal_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `account_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `secret_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paypal_payments`
--

INSERT INTO `paypal_payments` (`id`, `status`, `account_mode`, `client_id`, `secret_id`, `country_code`, `currency_code`, `currency_rate`, `created_at`, `updated_at`) VALUES
(1, 1, 'sandbox', 'AWlV5x8Lhj9BRF8-TnawXtbNs-zt69mMVXME1BGJUIoDdrAYz8QIeeTBQp0sc2nIL9E529KJZys32Ipy', 'EEvn1J_oIC6alxb-FoF4t8buKwy4uEWHJ4_Jd_wolaSPRMzFHe6GrMrliZAtawDDuE-WKkCKpWGiz0Yn', 'US', 'USD', 1, NULL, '2022-02-07 02:29:44');

-- --------------------------------------------------------

--
-- Table structure for table `paystack_and_mollies`
--

CREATE TABLE `paystack_and_mollies` (
  `id` bigint UNSIGNED NOT NULL,
  `mollie_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_status` int NOT NULL DEFAULT '0',
  `mollie_currency_rate` double NOT NULL DEFAULT '1',
  `paystack_public_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_currency_rate` double NOT NULL DEFAULT '1',
  `paystack_status` int NOT NULL DEFAULT '0',
  `mollie_country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mollie_currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paystack_country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paystack_currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paystack_and_mollies`
--

INSERT INTO `paystack_and_mollies` (`id`, `mollie_key`, `mollie_status`, `mollie_currency_rate`, `paystack_public_key`, `paystack_secret_key`, `paystack_currency_rate`, `paystack_status`, `mollie_country_code`, `mollie_currency_code`, `paystack_country_code`, `paystack_currency_code`, `created_at`, `updated_at`) VALUES
(1, 'test_bgtkwz4pErUqqTzW8KyRQKR27WgMuE', 1, 1.27, 'pk_test_057dfe5dee14eaf9c3b4573df1e3760c02c06e38', 'sk_test_77cb93329abbdc18104466e694c9f720a7d69c97', 417.35, 1, 'CA', 'CAD', 'NG', 'NGN', NULL, '2022-02-07 02:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `popular_categories`
--

CREATE TABLE `popular_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_qty` int NOT NULL DEFAULT '12',
  `category_id_one` int NOT NULL DEFAULT '0',
  `sub_category_id_one` int NOT NULL DEFAULT '0',
  `child_category_id_one` int NOT NULL DEFAULT '0',
  `category_id_two` int NOT NULL DEFAULT '0',
  `sub_category_id_two` int NOT NULL DEFAULT '0',
  `child_category_id_two` int NOT NULL DEFAULT '0',
  `category_id_three` int NOT NULL DEFAULT '0',
  `sub_category_id_three` int NOT NULL DEFAULT '0',
  `child_category_id_three` int NOT NULL DEFAULT '0',
  `category_id_four` int NOT NULL DEFAULT '0',
  `sub_category_id_four` int NOT NULL DEFAULT '0',
  `child_category_id_four` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `popular_categories`
--

INSERT INTO `popular_categories` (`id`, `title`, `product_qty`, `category_id_one`, `sub_category_id_one`, `child_category_id_one`, `category_id_two`, `sub_category_id_two`, `child_category_id_two`, `category_id_three`, `sub_category_id_three`, `child_category_id_three`, `category_id_four`, `sub_category_id_four`, `child_category_id_four`, `created_at`, `updated_at`) VALUES
(1, 'Popular Categories', 9, 1, 0, 0, 5, 0, 0, 6, 0, 0, 2, 0, 0, NULL, '2022-02-07 08:08:58');

-- --------------------------------------------------------

--
-- Table structure for table `popular_posts`
--

CREATE TABLE `popular_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_id` int NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `popular_posts`
--

INSERT INTO `popular_posts` (`id`, `blog_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-01-30 12:45:43', '2022-01-30 12:45:59'),
(2, 2, 1, '2022-02-08 08:29:47', '2022-02-08 08:29:47'),
(3, 4, 1, '2022-02-08 08:30:27', '2022-02-08 08:30:27'),
(4, 9, 1, '2022-02-08 08:30:33', '2022-02-08 08:30:33');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` int DEFAULT '0',
  `category_id` int NOT NULL,
  `sub_category_id` int NOT NULL DEFAULT '0',
  `child_category_id` int NOT NULL DEFAULT '0',
  `brand_id` int NOT NULL,
  `qty` int NOT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `offer_price` double DEFAULT NULL,
  `offer_start_date` date DEFAULT NULL,
  `offer_end_date` date DEFAULT NULL,
  `tax_id` int NOT NULL,
  `is_cash_delivery` tinyint NOT NULL DEFAULT '0',
  `is_return` tinyint NOT NULL DEFAULT '0',
  `return_policy_id` int DEFAULT NULL,
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_warranty` tinyint NOT NULL DEFAULT '0',
  `show_homepage` tinyint NOT NULL DEFAULT '0',
  `is_undefine` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_wholesale` int NOT NULL DEFAULT '0',
  `new_product` tinyint NOT NULL DEFAULT '0',
  `is_top` tinyint NOT NULL DEFAULT '0',
  `is_best` tinyint NOT NULL DEFAULT '0',
  `is_flash_deal` tinyint NOT NULL DEFAULT '0',
  `flash_deal_date` date DEFAULT NULL,
  `buyone_getone` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `is_specification` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` bigint UNSIGNED DEFAULT NULL,
  `is_pre_order` tinyint DEFAULT '0',
  `is_partial` tinyint DEFAULT '0',
  `release_date` date DEFAULT NULL,
  `max_product` int DEFAULT NULL,
  `partial_amount` int DEFAULT NULL,
  `sold_qty` int DEFAULT '0',
  `partial_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `approve_by_admin` tinyint DEFAULT '0',
  `product_type` enum('normal','affiliate') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `affiliate_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `size_qty` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `size_price` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `views` int UNSIGNED NOT NULL DEFAULT '0',
  `type` enum('Physical','Digital','License') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Physical',
  `license` text COLLATE utf8mb4_general_ci,
  `license_qty` text COLLATE utf8mb4_general_ci,
  `link` text COLLATE utf8mb4_general_ci,
  `platform` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `licence_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_date` text COLLATE utf8mb4_general_ci,
  `whole_sell_qty` text COLLATE utf8mb4_general_ci,
  `whole_sell_discount` text COLLATE utf8mb4_general_ci,
  `type_check` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `banner_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `offer_start_date`, `offer_end_date`, `tax_id`, `is_cash_delivery`, `is_return`, `return_policy_id`, `tags`, `is_warranty`, `show_homepage`, `is_undefine`, `is_featured`, `is_wholesale`, `new_product`, `is_top`, `is_best`, `is_flash_deal`, `flash_deal_date`, `buyone_getone`, `status`, `is_specification`, `created_at`, `updated_at`, `weight`, `city_id`, `is_pre_order`, `is_partial`, `release_date`, `max_product`, `partial_amount`, `sold_qty`, `partial_type`, `approve_by_admin`, `product_type`, `affiliate_link`, `file`, `size`, `size_qty`, `size_price`, `views`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `type_check`) VALUES
(1, 'Canon Eos 80D DSLR Camera', 'Canon Eos 80D DSLR Camera', 'canon-eos-80d-dslr-camera', 'uploads/custom-images/canon-eos-80d-dslr-camera-with-18-135mm-is-usm-lens-2022-02-10-09-47-27-7491.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-14-07-6127.jpg', 0, 1, 1, 1, 1, 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', NULL, NULL, 'Canon Eos 80D DSLR Camera', 'Canon Eos 80D DSLR Camera', 120, NULL, NULL, NULL, 2, 0, 1, 1, NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, 1, 0, '2022-01-30 09:48:24', '2024-08-07 14:01:19', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 'Canon Eos 4000D 18MP Dslr Camera', 'Canon Eos 4000D 18MP Dslr Camera', 'canon-eos-4000d-18mp-dslr-camera', 'uploads/custom-images/canon-eos-4000d-18mp-27inch-display-with-18-55mm-lens-dslr-camera-2022-02-10-09-48-13-3595.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-13-52-4191.jpg', 0, 1, 1, 1, 1, 17, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', NULL, NULL, 'Canon Eos 4000D 18MP Dslr Camera', 'Canon Eos 4000D 18MP Dslr Camera', 50, 45, NULL, NULL, 1, 0, 1, 1, NULL, 1, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 1, 0, '2022-01-30 09:50:45', '2022-02-16 04:01:47', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, 'Boulevard C90', 'Boulevard C90', 'boulevard-c90', 'uploads/custom-images/boulevard-c90-2022-02-10-09-51-15-1652.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-13-06-5777.jpg', 0, 4, 2, 0, 14, 116, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.&nbsp;It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p><p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', NULL, NULL, 'Boulevard C90', 'Boulevard C90', 148, NULL, NULL, NULL, 2, 0, 0, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 1, 1, '2022-01-30 10:15:25', '2022-02-16 04:01:07', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, 'Suzuki Gixxer SF 150', 'Suzuki Gixxer SF 150', 'suzuki-gixxer-sf-150', 'uploads/custom-images/suzuki-gixxer-sf-150-2022-02-10-12-20-39-9013.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-12-51-2882.jpg', 0, 4, 4, 0, 2, 49, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 'https://www.youtube.com/watch?v=bjn1MLTri34', '1254785964', 'Suzuki Gixxer SF 150', 'Suzuki Gixxer SF 150', 49, 45, NULL, NULL, 1, 0, 1, 1, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 1, '2022-04-30', 0, 1, 1, '2022-01-30 10:17:52', '2022-04-14 09:57:56', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, 'Preimum Quality Winter Hoodie For Men', 'Preimum Quality Winter Hoodie For Men', 'preimum-quality-winter-hoodie-for-men', 'uploads/custom-images/red-hot-ink-t-shirts-2022-02-02-08-24-22-7441.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-12-35-3630.jpg', 0, 5, 15, 0, 4, 47, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', NULL, NULL, 'Preimum Quality Winter Hoodie For Men', 'Preimum Quality Winter Hoodie For Men', 95, 70, NULL, NULL, 2, 0, 0, 0, NULL, 1, 0, 0, 1, 0, 0, 0, 0, 0, NULL, 0, 1, 0, '2022-01-30 10:20:48', '2022-02-16 04:00:48', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, 'Samsung Galaxy Note 20 Ultra', 'Samsung Galaxy Note 20 Ultra', 'samsung-galaxy-note-20-ultra', 'uploads/custom-images/samsung-galaxy-note-20-ultra-2022-02-02-08-23-39-9640.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-12-21-4747.jpg', 0, 2, 0, 0, 1, 82, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', NULL, NULL, 'Samsung Galaxy Note 20 Ultra', 'Samsung Galaxy Note 20 Ultra', 100, 90, NULL, NULL, 2, 0, 1, 1, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 1, '2022-03-05', 0, 1, 0, '2022-01-30 10:22:53', '2022-02-16 04:00:39', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, 'Samsung Galaxy A52 (8/128 GB)', 'Samsung Galaxy A52 (8/128 GB)', 'samsung-galaxy-a52-8128-gb', 'uploads/custom-images/samsung-galaxy-a52-8128-gb-2022-02-06-12-14-24-9946.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-15-39-4816.jpg', 1, 2, 0, 0, 6, 13, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', NULL, NULL, 'Samsung Galaxy A52 (8/128 GB)', 'Samsung Galaxy A52 (8/128 GB)', 300, NULL, NULL, NULL, 1, 0, 0, 0, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 1, '2022-01-31 07:20:56', '2022-06-11 07:01:16', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 'Samsung Galaxy A03s 4GB/64GB', 'Samsung Galaxy A03s 4GB/64GB', 'samsung-galaxy-a03s-4gb64gb', 'uploads/custom-images/samsung-galaxy-a03s-4gb64gb-2022-02-02-08-22-14-7560.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-15-55-2585.jpg', 1, 2, 11, 0, 15, 59, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;<span style=\"background-color: transparent;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</span><span style=\"background-color: transparent;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span><br></p>', NULL, NULL, 'Samsung Galaxy A03s 4GB/64GB', 'Samsung Galaxy A03s 4GB/64GB', 115, NULL, NULL, NULL, 2, 0, 1, 1, NULL, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 1, 1, '2022-01-31 07:22:02', '2022-02-16 04:02:45', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, 'Apple iPhone 12 Pro Max', 'Apple iPhone 12 Pro Max', 'apple-iphone-12-pro-max', 'uploads/custom-images/symphony-z20-2022-02-06-12-17-14-1684.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-16-11-3797.jpg', 1, 1, 1, 1, 1, 212, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', NULL, NULL, 'Apple iPhone 12 Pro Max', 'Apple iPhone 12 Pro Max', 20, NULL, NULL, NULL, 3, 0, 0, 0, NULL, 1, 0, 0, 1, 0, 0, 0, 0, 0, NULL, 0, 1, 0, '2022-01-31 07:24:49', '2022-08-21 02:25:11', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 'New Fashionable Jeans shirt', 'New Fashionable Jeans shirt', 'new-fashionable-jeans-shirt', 'uploads/custom-images/new-fashionable-jeans-shirt-2022-02-06-12-48-03-6727.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-16-26-6170.jpg', 2, 6, 6, 3, 2, 10, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 'https://www.youtube.com/watch?v=O1aT9Lun048', NULL, 'New Fashionable Jeans shirt', 'New Fashionable Jeans shirt', 52, 50, NULL, NULL, 2, 0, 1, 1, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 1, '2022-05-06', 0, 1, 0, '2022-01-31 08:52:05', '2024-10-27 18:15:20', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, 'Cotton Ball Printed Formal Shirt For Men', 'Cotton Ball Printed Formal Shirt For Men', 'cotton-ball-printed-formal-shirt-for-men', 'uploads/custom-images/stylish-fashionable-trendy-cotton-ball-printed-long-sleeve-formal-shirt-for-men-2022-02-11-03-49-07-7546.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-49-11-6533.jpg', 2, 5, 13, 0, 3, 55, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 'https://www.youtube.com/watch?v=O1aT9Lun048', NULL, 'Cotton Ball Printed Formal Shirt For Men', 'Cotton Ball Printed Formal Shirt For Men', 85, NULL, NULL, NULL, 2, 0, 1, 1, '[{\"value\":\"male shirt\"},{\"value\":\"casual shirt\"}]', 1, 0, 0, 0, 0, 0, 0, 0, 1, '2022-05-07', 0, 1, 1, '2022-01-31 08:53:35', '2022-07-03 14:27:48', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(12, 'Hp 240 G7 10Th Gen Intel Core I3 1005G1', 'Hp 240 G7 10Th Gen Intel Core I3 1005G1', 'hp-240-g7-10th-gen-intel-core-i3-1005g1', 'uploads/custom-images/hp-240-g7-10th-gen-intel-core-i3-1005g1-2022-02-06-07-48-00-4284.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-12-06-2654.jpg', 0, 1, 7, 6, 7, 94, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 'https://www.youtube.com/watch?v=AkFi90lZmXA', '58754126', 'Hp 240 G7 10Th Gen Intel Core I3 1005G1', 'Hp 240 G7 10Th Gen Intel Core I3 1005G1', 30, NULL, NULL, NULL, 2, 0, 1, 1, '[{\"value\":\"hp laptop\"},{\"value\":\"laptop\"},{\"value\":\"smart laptop\"}]', 1, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, 1, 1, '2022-02-06 01:48:05', '2024-09-02 21:15:28', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, 'Lenovo Core i3 11th Gen Laptop', 'Lenovo Core i3 11th Gen Laptop', 'lenovo-core-i3-11th-gen-laptop', 'uploads/custom-images/lenovo-15s-fq2581tu-core-i3-11th-gen-156-fhd-laptop-2022-02-06-08-13-03-8166.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-11-52-4196.jpg', 0, 1, 7, 4, 9, 198, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 'https://www.youtube.com/watch?v=07d2dXHYb94', '52147856', 'Lenovo Core i3 11th Gen Laptop', 'Lenovo Core i3 11th Gen Laptop', 36, 33, NULL, NULL, 2, 0, 1, 1, '[{\"value\":\"lenovo\"},{\"value\":\"lenovo laptop\"},{\"value\":\"laptop\"}]', 1, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 1, 1, '2022-02-06 02:13:07', '2024-10-27 18:41:39', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, 'Asus 240 G7 10th Gen Intel Core i3 1005G1', 'Asus 240 G7 10th Gen Intel Core i3 1005G1', 'asus-240-g7-10th-gen-intel-core-i3-1005g1', 'uploads/custom-images/asus-240-g7-10th-gen-intel-core-i3-1005g1-2022-02-11-03-45-37-8930.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-43-47-1524.jpg', 0, 1, 7, 5, 8, 24, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', NULL, '85474512', 'Asus 240 G7 10th Gen Intel Core i3 1005G1', 'Asus 240 G7 10th Gen Intel Core i3 1005G1', 32, 30, NULL, NULL, 3, 0, 1, 1, '[{\"value\":\"laptop\"},{\"value\":\"asus\"},{\"value\":\"asus laptop\"}]', 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 1, 1, '2022-02-06 02:23:51', '2022-07-03 14:27:48', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(15, 'Intel NEW Desktop Computer', 'Intel NEW Desktop Computer', 'intel-new-desktop-computer', 'uploads/custom-images/intel-core-i3-ram-8gb-hdd-500gb-graphics-2gb-built-in-gaming-pc-win-10-64-bit-brand-new-desktop-computer-2022-2022-02-10-08-38-33-3847.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-11-17-2795.jpg', 0, 1, 8, 0, 11, 199, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 'https://www.youtube.com/watch?v=qm67wbB5GmI', '874521', 'Intel NEW Desktop Computer', 'Intel NEW Desktop Computer', 70, NULL, NULL, NULL, 3, 0, 1, 1, '[{\"value\":\"intel pc\"},{\"value\":\"gaming pc\"},{\"value\":\"intel\"},{\"value\":\"desktop\"}]', 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 1, 0, '2022-02-06 02:34:01', '2022-02-16 03:59:13', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(16, 'A4Tech Wireless Mouse', 'A4Tech Wireless Mouse', 'a4tech-wireless-mouse', 'uploads/custom-images/a4tech-red-color-wireless-mouse-2022-02-06-08-44-24-2055.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-11-00-6698.jpg', 0, 1, 9, 7, 12, 41, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 'https://www.youtube.com/watch?v=qm67wbB5GmI', '8541255', 'A4Tech Wireless Mouse', 'A4Tech Wireless Mouse', 50, NULL, NULL, NULL, 1, 0, 0, 0, '[{\"value\":\"a4tech\"},{\"value\":\"mouse\"},{\"value\":\"keyboard\"}]', 1, 0, 0, 1, 0, 0, 0, 1, 1, '2024-07-15', 0, 1, 0, '2022-02-06 02:44:29', '2024-08-31 01:35:57', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(17, 'A4Tech Wireless Mouse And Keyboard', 'A4Tech Wireless Mouse And Keyboard', 'a4tech-wireless-mouse-and-keyboard', 'uploads/custom-images/a4tech-wireless-mouse-and-keyboard-2022-02-06-08-49-50-2666.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-10-45-3899.jpg', 0, 1, 9, 7, 12, 43, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 'https://www.youtube.com/watch?v=5Mh3o886qpg', '58754126854', 'A4Tech Wireless Mouse And Keyboard', 'A4Tech Wireless Mouse And Keyboard', 16, NULL, NULL, NULL, 2, 0, 0, 0, '[{\"value\":\"mouse and keyboard\"},{\"value\":\"a4tech\"}]', 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, 0, 1, 0, '2022-02-06 02:49:54', '2024-07-31 18:03:02', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, 'Soft Focus Finger Typing Keyboard', 'Soft Focus Finger Typing Keyboard', 'soft-focus-finger-typing-keyboard', 'uploads/custom-images/close-up-soft-focus-finger-typing-keyboard-2022-02-06-08-54-59-2178.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-09-59-8305.jpg', 0, 1, 9, 7, 12, 84, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 'https://www.youtube.com/watch?v=5Mh3o886qpg', NULL, 'Soft Focus Finger Typing Keyboard', 'Soft Focus Finger Typing Keyboard', 80, 50, NULL, NULL, 2, 0, 1, 1, NULL, 1, 0, 0, 1, 0, 0, 0, 0, 0, NULL, 0, 1, 0, '2022-02-06 02:55:04', '2024-10-27 19:51:26', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(19, 'F9 Ipx7 2000mah TWS Wireless Earbuds', 'F9 Ipx7 2000mah TWS Wireless Earbuds', 'f9-ipx7-2000mah-tws-wireless-earbuds', 'uploads/custom-images/f9-ipx7-2000mah-tws-wireless-earbuds-bluetooth-50-wireless-earbud-headphone-2022-02-10-09-45-42-3665.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-09-44-1506.jpg', 0, 2, 10, 0, 13, 220, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 'https://www.youtube.com/watch?v=qm67wbB5GmI', NULL, 'F9 Ipx7 2000mah TWS Wireless Earbuds Bluetooth 5.0 Wireless Earbud Headphone', 'F9 Ipx7 2000mah TWS Wireless Earbuds Bluetooth 5.0 Wireless Earbud Headphone', 30, NULL, NULL, NULL, 3, 0, 0, 0, NULL, 1, 0, 0, 1, 0, 0, 0, 0, 0, NULL, 0, 1, 0, '2022-02-06 03:06:42', '2022-02-16 03:57:12', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(20, 'Digital Wireless Bluetooth Headphone', 'Digital Wireless Bluetooth Headphone', 'digital-wireless-bluetooth-headphone-', 'uploads/custom-images/digital-wireless-bluetooth-headphone-2022-02-10-10-22-00-2268.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-09-29-8654.jpg', 0, 2, 10, 0, 13, 35, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', NULL, NULL, 'Digital Wireless Bluetooth Headphone', 'Digital Wireless Bluetooth Headphone', 85, 50, NULL, NULL, 1, 0, 0, 0, '[{\"value\":\"headphone\"},{\"value\":\"wireless headphone\"}]', 1, 0, 0, 0, 0, 0, 0, 0, 1, '2022-03-31', 0, 1, 0, '2022-02-06 03:13:20', '2024-07-31 18:58:28', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `banner_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `offer_start_date`, `offer_end_date`, `tax_id`, `is_cash_delivery`, `is_return`, `return_policy_id`, `tags`, `is_warranty`, `show_homepage`, `is_undefine`, `is_featured`, `is_wholesale`, `new_product`, `is_top`, `is_best`, `is_flash_deal`, `flash_deal_date`, `buyone_getone`, `status`, `is_specification`, `created_at`, `updated_at`, `weight`, `city_id`, `is_pre_order`, `is_partial`, `release_date`, `max_product`, `partial_amount`, `sold_qty`, `partial_type`, `approve_by_admin`, `product_type`, `affiliate_link`, `file`, `size`, `size_qty`, `size_price`, `views`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `type_check`) VALUES
(21, 'M11 TWS Earphone With LED Digital Display', 'M11 TWS Earphone With LED Digital Display', 'm11-tws-earphone-with-led-digital-display', 'uploads/custom-images/m11-tws-earphone-with-led-digital-display-touch-50-ipx7-waterproof-bluetooth-headset-2022-02-10-09-44-28-2064.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-09-13-6189.jpg', 0, 2, 10, 0, 13, 320, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 'https://www.youtube.com/watch?v=5Mh3o886qpg', NULL, 'M11 TWS Earphone With LED Digital Display Touch 5.0 ipx7 Waterproof Bluetooth Headset', 'M11 TWS Earphone With LED Digital Display Touch 5.0 ipx7 Waterproof Bluetooth Headset', 70, NULL, NULL, NULL, 3, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 1, 0, '2022-02-06 03:20:01', '2024-07-31 18:58:28', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(22, 'Suzuki Intruder M1800R', 'Suzuki Intruder M1800R', 'suzuki-intruder-m1800r', 'uploads/custom-images/suzuki-intruder-m1800r-2022-02-06-10-38-21-2749.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-17-08-6009.jpg', 3, 4, 2, 0, 14, 27, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', NULL, NULL, 'Suzuki Intruder M1800R', 'Suzuki Intruder M1800R', 85, NULL, NULL, NULL, 3, 0, 1, 2, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 1, '2022-02-06 04:38:27', '2024-08-09 15:45:53', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(23, 'Suzuki NEX Crossover', 'Suzuki NEX Crossover', 'suzuki-nex-crossover', 'uploads/custom-images/suzuki-nex-crossover-2022-02-11-03-46-59-5168.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-47-01-7909.jpg', 3, 4, 2, 0, 14, 38, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 'https://www.youtube.com/watch?v=BxuL5-O7YnI', '521478564578', 'Suzuki NEX Crossover', 'Suzuki NEX Crossover', 52, NULL, NULL, NULL, 2, 0, 1, 1, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 0, '2022-02-06 05:44:08', '2022-02-16 04:04:33', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(24, 'High Quality Drone Camera', 'High Quality Drone Camera', 'high-quality-drone-camera', 'uploads/custom-images/fast-flaying-high-quality-radioremote-controlled-drone-camera-2022-02-06-11-54-50-3977.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-17-43-4094.jpg', 3, 1, 1, 1, 1, 845, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', 'https://www.youtube.com/watch?v=4r_S57G55Yg', NULL, 'High Quality Drone Camera', 'High Quality Drone Camera', 32, 28, NULL, NULL, 1, 0, 0, 0, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 0, '2022-02-06 05:54:55', '2022-06-11 07:01:17', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(25, 'High Quality Artificial Leather Wallet For Men', 'High Quality Artificial Leather Wallet For Men', 'high-quality-artificial-leather-wallet-for-men', 'uploads/custom-images/bogesi-black-high-quality-artificial-leather-wallet-for-men-2022-02-06-01-11-28-4268.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-18-04-4766.jpg', 4, 7, 0, 0, 6, 84, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', NULL, NULL, 'High Quality Artificial Leather Wallet For Men', 'High Quality Artificial Leather Wallet For Men', 75, 45, NULL, NULL, 1, 0, 1, 1, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 0, '2022-02-06 07:11:32', '2022-02-16 04:05:49', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(26, 'Stylish and Fashionable Ladies Hand Bag', 'Stylish and Fashionable Ladies Hand Bag', 'stylish-and-fashionable-ladies-hand-bag', 'uploads/custom-images/stylish-and-fashionable-ladies-hand-bag-2022-02-06-01-18-09-2998.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-18-18-9281.jpg', 4, 7, 0, 0, 3, 219, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', NULL, NULL, 'Stylish and Fashionable Ladies Hand Bag', 'Stylish and Fashionable Ladies Hand Bag', 50, 45, NULL, NULL, 1, 0, 1, 1, NULL, 1, 0, 0, 1, 0, 0, 0, 0, 0, NULL, 0, 1, 0, '2022-02-06 07:16:11', '2022-02-16 04:05:58', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(27, 'Ladies Crossbody Shoulder Bag', 'Ladies Crossbody Shoulder Bag', 'ladies-crossbody-shoulder-bag', 'uploads/custom-images/ladies-crossbody-shoulder-bag-2022-02-06-02-13-34-1165.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-08-51-3733.jpg', 0, 6, 14, 0, 3, 219, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', NULL, NULL, 'Ladies Crossbody Shoulder Bag', 'Ladies Crossbody Shoulder Bag', 58, NULL, NULL, NULL, 1, 0, 0, 0, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 0, '2022-02-06 08:08:51', '2022-02-16 03:55:48', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(28, 'Ladies Crossbody  Leather Shoulder Bag', 'Ladies Crossbody  Leather Shoulder Bag', 'ladies-crossbody-leather-shoulder-bag', 'uploads/custom-images/ladies-crossbody-leather-shoulder-bag-2022-02-06-02-18-34-1189.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-15-22-6803.jpg', 4, 6, 14, 0, 3, 220, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', NULL, NULL, 'Ladies Crossbody  Leather Shoulder Bag', 'Ladies Crossbody  Leather Shoulder Bag', 20, NULL, NULL, NULL, 2, 0, 0, 0, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 0, '2022-02-06 08:18:40', '2022-02-16 04:04:15', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(29, 'Rainbow Strawberry Pop-IT Toy', 'Rainbow Strawberry Pop-IT Toy', 'rainbow-strawberry-popit-toy', 'uploads/custom-images/rainbow-strawberry-pop-it-toy-2022-02-06-02-25-12-5025.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-08-36-7654.jpg', 0, 8, 0, 0, 2, 99, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', NULL, NULL, 'Rainbow Strawberry Pop-IT Toy', 'Rainbow Strawberry Pop-IT Toy', 34, NULL, NULL, NULL, 2, 0, 0, 0, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 0, '2022-02-06 08:25:19', '2024-07-31 18:03:02', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(30, 'Baby Water Bottle/Mom', 'Baby Water Bottle/Mom', 'baby-water-bottlemom', 'uploads/custom-images/baby-water-bottlemom-pot-200ml-1pcs-2022-02-06-02-30-43-8698.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-08-19-4420.jpg', 0, 8, 0, 0, 6, 219, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', NULL, NULL, 'Baby Water Bottle/Mom', 'Baby Water Bottle/Mom', 80, NULL, NULL, NULL, 2, 0, 1, 2, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 0, '2022-02-06 08:30:50', '2022-02-16 03:55:08', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(31, 'Epson LQ310 Dot Matrix Printer-White', 'Epson LQ310 Dot Matrix Printer-Black', 'epson-lq310-dot-matrix-printerwhite', 'uploads/custom-images/epson-lq310-dot-matrix-printer-white-2022-02-06-02-39-38-1087.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-08-03-4069.jpg', 0, 9, 0, 0, 1, 219, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', NULL, NULL, 'Epson LQ310 Dot Matrix Printer-White', 'Epson LQ310 Dot Matrix Printer-White', 20, NULL, NULL, NULL, 2, 0, 0, 0, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 0, '2022-02-06 08:38:19', '2024-10-27 19:55:34', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(32, 'Casual  Fashion Shoes For Men', 'Casual  Fashion Shoes For Men', 'casual-fashion-shoes-for-men', 'uploads/custom-images/fashion-shoes-for-men-casual-shoes-comfortable-2022-02-06-02-50-15-7154.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-07-49-6781.jpg', 0, 5, 16, 0, 4, 91, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', NULL, NULL, 'Casual  Fashion Shoes For Men', 'Casual  Fashion Shoes For Men', 30, NULL, NULL, NULL, 2, 0, 0, 0, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, 0, 1, 0, '2022-02-06 08:49:26', '2022-08-21 02:25:11', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(33, 'Winter Leather Jacket', 'Winter Leather Jacket', 'winter-leather-jacket', 'uploads/custom-images/winter-leather-jacket-2022-02-10-09-57-04-8030.jpg', 'uploads/custom-images/product-banner-2022-02-11-03-06-43-5770.jpg', 0, 5, 0, 0, 3, 53, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br></p>', NULL, NULL, 'Winter Leather Jacket', 'Winter Leather Jacket', 25, 20, NULL, NULL, 1, 0, 1, 1, NULL, 1, 0, 0, 1, 0, 0, 0, 0, 0, NULL, 0, 1, 0, '2022-02-10 03:57:08', '2024-10-27 20:11:26', NULL, NULL, 0, 0, NULL, NULL, NULL, 0, '0', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(34, 'Test Product', 'Keaton Rosales', 'test-product', 'uploads/custom-images/test-product-2024-06-30-08-36-45-1125.jpg', NULL, 0, 1, 0, 0, 1, 85, 'Lorem ipsum dolor sit amet consectetur adipiscing elit leo eu quam, molestie', '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 1.8em; line-height: 1.5; font-family: &quot;Source Sans Pro&quot;, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; letter-spacing: -0.003em; color: rgba(0, 0, 0, 0.8); text-align: justify;\">Lorem ipsum dolor sit amet consectetur adipiscing elit vel, arcu ridiculus risus velit vehicula est nam feugiat, volutpat lobortis eleifend lacus nisl quam inceptos. Vehicula at senectus volutpat ultricies a dui nisl conubia, fames magnis arcu tristique elementum dignissim imperdiet habitasse pharetra, euismod netus cursus sodales nam porta condimentum vestibulum, odio nisi et lacinia praesent habitant nostra. Penatibus pretium mattis eleifend nullam pellentesque ac dignissim, netus tempor mauris ad ligula sagittis convallis, natoque in blandit erat velit phasellus. Aptent varius est erat leo risus interdum taciti mus suspendisse turpis, ac penatibus massa nostra platea blandit pharetra euismod dictumst dapibus morbi, torquent proin tincidunt vel facilisis lacinia nascetur praesent primis. Morbi curabitur velit ultrices mollis vehicula tristique quam libero iaculis netus nisl suspendisse litora purus dui, sollicitudin neque porttitor feugiat ut vestibulum vel bibendum quis dictumst hendrerit a imperdiet. Dictum aptent feugiat facilisis litora fusce habitasse augue molestie, pellentesque vulputate convallis eros porttitor praesent ornare mattis accumsan, phasellus tortor eleifend sed viverra dis fermentum. Commodo malesuada taciti netus vestibulum a potenti litora est, mattis natoque etiam ridiculus porttitor libero tortor. Purus nibh sapien fames commodo scelerisque, accumsan sollicitudin dictumst phasellus tincidunt, at quam eleifend vestibulum. Leo aenean etiam potenti eu vestibulum tellus nisl, senectus egestas ullamcorper sagittis felis nibh nec, lobortis lacinia cum natoque sodales dictumst. Auctor per dignissim diam libero dictumst ultricies netus vivamus montes, vitae imperdiet fames tempor erat pharetra natoque commodo, hac tincidunt nec venenatis massa placerat tempus vel. Ante sapien vulputate mattis tempus purus iaculis duis sem viverra cursus praesent eros fermentum morbi mus, sagittis torquent facilisi ridiculus faucibus convallis leo egestas quam ac suspendisse fringilla non.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 1.8em; line-height: 1.5; font-family: &quot;Source Sans Pro&quot;, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; letter-spacing: -0.003em; color: rgba(0, 0, 0, 0.8); text-align: justify;\">Curabitur vehicula maecenas mus donec vivamus aliquam tellus penatibus, felis vel id egestas magna hendrerit potenti, elementum quam luctus parturient bibendum lacus dis. Risus eu nascetur etiam duis facilisi condimentum porta porttitor mus, nec tellus sociis nibh ridiculus tempus tempor augue, primis felis parturient magna sociosqu neque penatibus aliquet. Mattis donec quis mollis accumsan parturient eros leo, varius penatibus purus tempus ut habitant, duis enim vel phasellus nascetur pharetra. Massa magnis ultricies turpis auctor habitasse nibh pharetra curae netus vitae egestas congue, neque quis facilisis cubilia vehicula pretium euismod ultrices eleifend volutpat. Vitae scelerisque suscipit in tincidunt maecenas congue, nec vel fusce fermentum penatibus nulla nunc, suspendisse odio ornare vulputate commodo. Pretium vel ac taciti penatibus orci sociosqu per netus morbi, rhoncus lacus vivamus bibendum magnis cursus turpis fermentum donec, semper mattis maecenas et enim parturient justo fusce. Facilisi inceptos accumsan torquent purus lectus litora urna fringilla, pharetra nunc ridiculus ultricies dis duis nec tristique ultrices, suspendisse fusce ullamcorper erat class massa fermentum. Ridiculus habitant molestie facilisi fames cum eros etiam magna, placerat vitae porta metus ante interdum egestas, pharetra odio hendrerit volutpat congue gravida dis.</p>', NULL, '69022520', 'Test Product', 'Test Product', 100, 90, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 1, 0, 0, 1, 1, 0, 0, NULL, 0, 1, 0, '2024-06-30 14:36:45', '2024-10-27 19:53:01', '10', NULL, 1, 1, '2024-06-30', 1, 11, 0, 'percentage', 0, 'normal', NULL, NULL, NULL, NULL, NULL, 0, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `product_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(15, 8, 'uploads/custom-images/Gallery-2022-02-02-08-28-08-6057.jpg', 1, '2022-02-02 02:28:08', '2022-02-02 02:28:08'),
(16, 8, 'uploads/custom-images/Gallery-2022-02-02-08-28-08-6224.jpg', 1, '2022-02-02 02:28:11', '2022-02-02 02:28:11'),
(17, 8, 'uploads/custom-images/Gallery-2022-02-02-08-28-11-4684.jpg', 1, '2022-02-02 02:28:14', '2022-02-02 02:28:14'),
(18, 8, 'uploads/custom-images/Gallery-2022-02-02-08-28-14-3893.jpg', 1, '2022-02-02 02:28:16', '2022-02-02 02:28:16'),
(19, 8, 'uploads/custom-images/Gallery-2022-02-02-08-28-43-5841.jpg', 1, '2022-02-02 02:28:45', '2022-02-02 02:28:45'),
(20, 8, 'uploads/custom-images/Gallery-2022-02-02-08-28-45-7880.jpg', 1, '2022-02-02 02:28:48', '2022-02-02 02:28:48'),
(23, 12, 'uploads/custom-images/Gallery-2022-02-06-07-48-53-4887.jpg', 1, '2022-02-06 01:48:58', '2022-02-06 01:48:58'),
(24, 12, 'uploads/custom-images/Gallery-2022-02-06-07-48-58-8366.jpg', 1, '2022-02-06 01:49:00', '2022-02-06 01:49:00'),
(25, 12, 'uploads/custom-images/Gallery-2022-02-06-07-49-00-2685.jpg', 1, '2022-02-06 01:49:03', '2022-02-06 01:49:03'),
(26, 12, 'uploads/custom-images/Gallery-2022-02-06-07-49-03-1716.jpg', 1, '2022-02-06 01:49:06', '2022-02-06 01:49:06'),
(27, 13, 'uploads/custom-images/Gallery-2022-02-06-08-14-28-2599.jpg', 1, '2022-02-06 02:14:32', '2022-02-06 02:14:32'),
(28, 13, 'uploads/custom-images/Gallery-2022-02-06-08-14-32-1325.jpg', 1, '2022-02-06 02:14:33', '2022-02-06 02:14:33'),
(29, 13, 'uploads/custom-images/Gallery-2022-02-06-08-14-33-9849.jpg', 1, '2022-02-06 02:14:34', '2022-02-06 02:14:34'),
(30, 13, 'uploads/custom-images/Gallery-2022-02-06-08-14-34-9216.jpg', 1, '2022-02-06 02:14:36', '2022-02-06 02:14:36'),
(31, 13, 'uploads/custom-images/Gallery-2022-02-06-08-14-37-9795.jpg', 1, '2022-02-06 02:14:40', '2022-02-06 02:14:40'),
(32, 14, 'uploads/custom-images/Gallery-2022-02-06-08-25-00-1509.jpg', 1, '2022-02-06 02:25:03', '2022-02-06 02:25:03'),
(33, 14, 'uploads/custom-images/Gallery-2022-02-06-08-25-03-3831.jpg', 1, '2022-02-06 02:25:04', '2022-02-06 02:25:04'),
(34, 14, 'uploads/custom-images/Gallery-2022-02-06-08-25-04-4119.jpg', 1, '2022-02-06 02:25:05', '2022-02-06 02:25:05'),
(35, 14, 'uploads/custom-images/Gallery-2022-02-06-08-25-05-6280.jpg', 1, '2022-02-06 02:25:08', '2022-02-06 02:25:08'),
(36, 14, 'uploads/custom-images/Gallery-2022-02-06-08-25-08-8203.jpg', 1, '2022-02-06 02:25:11', '2022-02-06 02:25:11'),
(39, 15, 'uploads/custom-images/Gallery-2022-02-06-08-35-03-4749.jpg', 1, '2022-02-06 02:35:06', '2022-02-06 02:35:06'),
(40, 15, 'uploads/custom-images/Gallery-2022-02-06-08-35-06-5351.jpg', 1, '2022-02-06 02:35:09', '2022-02-06 02:35:09'),
(41, 16, 'uploads/custom-images/Gallery-2022-02-06-08-46-16-7300.jpg', 1, '2022-02-06 02:46:18', '2022-02-06 02:46:18'),
(42, 16, 'uploads/custom-images/Gallery-2022-02-06-08-46-18-5203.jpg', 1, '2022-02-06 02:46:20', '2022-02-06 02:46:20'),
(43, 16, 'uploads/custom-images/Gallery-2022-02-06-08-46-20-2923.jpg', 1, '2022-02-06 02:46:22', '2022-02-06 02:46:22'),
(44, 16, 'uploads/custom-images/Gallery-2022-02-06-08-46-22-8790.jpg', 1, '2022-02-06 02:46:23', '2022-02-06 02:46:23'),
(45, 17, 'uploads/custom-images/Gallery-2022-02-06-08-51-40-6725.jpg', 1, '2022-02-06 02:51:43', '2022-02-06 02:51:43'),
(46, 17, 'uploads/custom-images/Gallery-2022-02-06-08-51-43-8372.jpg', 1, '2022-02-06 02:51:44', '2022-02-06 02:51:44'),
(47, 17, 'uploads/custom-images/Gallery-2022-02-06-08-51-44-1529.jpg', 1, '2022-02-06 02:51:47', '2022-02-06 02:51:47'),
(48, 17, 'uploads/custom-images/Gallery-2022-02-06-08-51-47-7341.jpg', 1, '2022-02-06 02:51:48', '2022-02-06 02:51:48'),
(49, 17, 'uploads/custom-images/Gallery-2022-02-06-08-51-48-5115.jpg', 1, '2022-02-06 02:51:50', '2022-02-06 02:51:50'),
(50, 18, 'uploads/custom-images/Gallery-2022-02-06-08-55-53-4129.jpg', 1, '2022-02-06 02:55:54', '2022-02-06 02:55:54'),
(51, 18, 'uploads/custom-images/Gallery-2022-02-06-08-55-54-6473.jpg', 1, '2022-02-06 02:55:56', '2022-02-06 02:55:56'),
(52, 18, 'uploads/custom-images/Gallery-2022-02-06-08-55-56-8137.jpg', 1, '2022-02-06 02:55:57', '2022-02-06 02:55:57'),
(53, 18, 'uploads/custom-images/Gallery-2022-02-06-08-55-57-8504.jpg', 1, '2022-02-06 02:55:59', '2022-02-06 02:55:59'),
(54, 18, 'uploads/custom-images/Gallery-2022-02-06-08-55-59-8541.jpg', 1, '2022-02-06 02:56:00', '2022-02-06 02:56:00'),
(55, 19, 'uploads/custom-images/Gallery-2022-02-06-09-08-16-8166.jpg', 1, '2022-02-06 03:08:19', '2022-02-06 03:08:19'),
(56, 19, 'uploads/custom-images/Gallery-2022-02-06-09-08-19-7755.jpg', 1, '2022-02-06 03:08:20', '2022-02-06 03:08:20'),
(57, 19, 'uploads/custom-images/Gallery-2022-02-06-09-08-20-7235.jpg', 1, '2022-02-06 03:08:22', '2022-02-06 03:08:22'),
(58, 19, 'uploads/custom-images/Gallery-2022-02-06-09-08-22-6061.jpg', 1, '2022-02-06 03:08:25', '2022-02-06 03:08:25'),
(59, 19, 'uploads/custom-images/Gallery-2022-02-06-09-08-25-5496.jpg', 1, '2022-02-06 03:08:27', '2022-02-06 03:08:27'),
(60, 20, 'uploads/custom-images/Gallery-2022-02-06-09-14-50-5614.jpg', 1, '2022-02-06 03:14:52', '2022-02-06 03:14:52'),
(61, 20, 'uploads/custom-images/Gallery-2022-02-06-09-14-52-9663.jpg', 1, '2022-02-06 03:14:55', '2022-02-06 03:14:55'),
(62, 20, 'uploads/custom-images/Gallery-2022-02-06-09-14-55-1389.jpg', 1, '2022-02-06 03:14:59', '2022-02-06 03:14:59'),
(63, 20, 'uploads/custom-images/Gallery-2022-02-06-09-14-59-6574.jpg', 1, '2022-02-06 03:15:00', '2022-02-06 03:15:00'),
(64, 21, 'uploads/custom-images/Gallery-2022-02-06-09-21-27-2363.jpg', 1, '2022-02-06 03:21:28', '2022-02-06 03:21:28'),
(65, 21, 'uploads/custom-images/Gallery-2022-02-06-09-21-28-9013.jpg', 1, '2022-02-06 03:21:31', '2022-02-06 03:21:31'),
(66, 21, 'uploads/custom-images/Gallery-2022-02-06-09-21-31-2037.jpg', 1, '2022-02-06 03:21:33', '2022-02-06 03:21:33'),
(67, 1, 'uploads/custom-images/Gallery-2022-02-06-09-44-29-9761.jpg', 1, '2022-02-06 03:44:32', '2022-02-06 03:44:32'),
(68, 1, 'uploads/custom-images/Gallery-2022-02-06-09-44-32-6380.jpg', 1, '2022-02-06 03:44:34', '2022-02-06 03:44:34'),
(69, 1, 'uploads/custom-images/Gallery-2022-02-06-09-44-34-2550.jpg', 1, '2022-02-06 03:44:36', '2022-02-06 03:44:36'),
(70, 1, 'uploads/custom-images/Gallery-2022-02-06-09-44-36-2238.jpg', 1, '2022-02-06 03:44:38', '2022-02-06 03:44:38'),
(71, 2, 'uploads/custom-images/Gallery-2022-02-06-09-47-28-9616.jpg', 1, '2022-02-06 03:47:30', '2022-02-06 03:47:30'),
(72, 2, 'uploads/custom-images/Gallery-2022-02-06-09-47-30-3142.jpg', 1, '2022-02-06 03:47:32', '2022-02-06 03:47:32'),
(73, 2, 'uploads/custom-images/Gallery-2022-02-06-09-47-32-7098.jpg', 1, '2022-02-06 03:47:34', '2022-02-06 03:47:34'),
(74, 2, 'uploads/custom-images/Gallery-2022-02-06-09-47-34-8281.jpg', 1, '2022-02-06 03:47:36', '2022-02-06 03:47:36'),
(75, 3, 'uploads/custom-images/Gallery-2022-02-06-09-50-45-4142.jpg', 1, '2022-02-06 03:50:49', '2022-02-06 03:50:49'),
(77, 3, 'uploads/custom-images/Gallery-2022-02-06-09-50-52-4764.jpg', 1, '2022-02-06 03:50:54', '2022-02-06 03:50:54'),
(78, 3, 'uploads/custom-images/Gallery-2022-02-06-09-50-54-7766.jpg', 1, '2022-02-06 03:50:57', '2022-02-06 03:50:57'),
(79, 4, 'uploads/custom-images/Gallery-2022-02-06-10-04-33-4747.jpg', 1, '2022-02-06 04:04:36', '2022-02-06 04:04:36'),
(80, 4, 'uploads/custom-images/Gallery-2022-02-06-10-04-36-6142.jpg', 1, '2022-02-06 04:04:38', '2022-02-06 04:04:38'),
(81, 4, 'uploads/custom-images/Gallery-2022-02-06-10-04-38-6359.jpg', 1, '2022-02-06 04:04:41', '2022-02-06 04:04:41'),
(82, 4, 'uploads/custom-images/Gallery-2022-02-06-10-04-41-9386.jpg', 1, '2022-02-06 04:04:44', '2022-02-06 04:04:44'),
(83, 22, 'uploads/custom-images/Gallery-2022-02-06-10-47-22-3979.jpg', 1, '2022-02-06 04:47:27', '2022-02-06 04:47:27'),
(84, 22, 'uploads/custom-images/Gallery-2022-02-06-10-47-27-7566.jpg', 1, '2022-02-06 04:47:30', '2022-02-06 04:47:30'),
(85, 22, 'uploads/custom-images/Gallery-2022-02-06-10-47-30-4071.jpg', 1, '2022-02-06 04:47:36', '2022-02-06 04:47:36'),
(86, 23, 'uploads/custom-images/Gallery-2022-02-06-11-45-12-3807.jpg', 1, '2022-02-06 05:45:16', '2022-02-06 05:45:16'),
(87, 23, 'uploads/custom-images/Gallery-2022-02-06-11-45-16-2045.jpg', 1, '2022-02-06 05:45:19', '2022-02-06 05:45:19'),
(88, 23, 'uploads/custom-images/Gallery-2022-02-06-11-45-19-1337.jpg', 1, '2022-02-06 05:45:24', '2022-02-06 05:45:24'),
(89, 24, 'uploads/custom-images/Gallery-2022-02-06-11-55-59-1077.jpg', 1, '2022-02-06 05:56:00', '2022-02-06 05:56:00'),
(90, 24, 'uploads/custom-images/Gallery-2022-02-06-11-56-00-9309.jpg', 1, '2022-02-06 05:56:01', '2022-02-06 05:56:01'),
(91, 7, 'uploads/custom-images/Gallery-2022-02-06-12-13-46-1701.jpg', 1, '2022-02-06 06:13:49', '2022-02-06 06:13:49'),
(92, 7, 'uploads/custom-images/Gallery-2022-02-06-12-13-49-8277.jpg', 1, '2022-02-06 06:13:52', '2022-02-06 06:13:52'),
(93, 7, 'uploads/custom-images/Gallery-2022-02-06-12-13-52-8824.jpg', 1, '2022-02-06 06:13:54', '2022-02-06 06:13:54'),
(94, 7, 'uploads/custom-images/Gallery-2022-02-06-12-13-54-1521.jpg', 1, '2022-02-06 06:13:55', '2022-02-06 06:13:55'),
(95, 9, 'uploads/custom-images/Gallery-2022-02-06-12-16-31-1207.jpg', 1, '2022-02-06 06:16:33', '2022-02-06 06:16:33'),
(96, 9, 'uploads/custom-images/Gallery-2022-02-06-12-16-33-8874.jpg', 1, '2022-02-06 06:16:35', '2022-02-06 06:16:35'),
(97, 9, 'uploads/custom-images/Gallery-2022-02-06-12-16-35-5715.jpg', 1, '2022-02-06 06:16:38', '2022-02-06 06:16:38'),
(98, 9, 'uploads/custom-images/Gallery-2022-02-06-12-16-38-8098.jpg', 1, '2022-02-06 06:16:40', '2022-02-06 06:16:40'),
(99, 9, 'uploads/custom-images/Gallery-2022-02-06-12-16-40-4297.jpg', 1, '2022-02-06 06:16:42', '2022-02-06 06:16:42'),
(100, 11, 'uploads/custom-images/Gallery-2022-02-06-12-39-51-2902.jpg', 1, '2022-02-06 06:39:54', '2022-02-06 06:39:54'),
(101, 11, 'uploads/custom-images/Gallery-2022-02-06-12-39-54-3889.jpg', 1, '2022-02-06 06:39:56', '2022-02-06 06:39:56'),
(102, 11, 'uploads/custom-images/Gallery-2022-02-06-12-39-56-1903.jpg', 1, '2022-02-06 06:39:59', '2022-02-06 06:39:59'),
(103, 10, 'uploads/custom-images/Gallery-2022-02-06-12-49-08-6962.jpg', 1, '2022-02-06 06:49:11', '2022-02-06 06:49:11'),
(104, 10, 'uploads/custom-images/Gallery-2022-02-06-12-49-11-7827.jpg', 1, '2022-02-06 06:49:14', '2022-02-06 06:49:14'),
(105, 25, 'uploads/custom-images/Gallery-2022-02-06-01-13-33-3257.jpg', 1, '2022-02-06 07:13:36', '2022-02-06 07:13:36'),
(106, 25, 'uploads/custom-images/Gallery-2022-02-06-01-13-36-7197.jpg', 1, '2022-02-06 07:13:37', '2022-02-06 07:13:37'),
(107, 25, 'uploads/custom-images/Gallery-2022-02-06-01-13-37-1397.jpg', 1, '2022-02-06 07:13:40', '2022-02-06 07:13:40'),
(108, 26, 'uploads/custom-images/Gallery-2022-02-06-01-18-37-4921.jpg', 1, '2022-02-06 07:18:39', '2022-02-06 07:18:39'),
(109, 26, 'uploads/custom-images/Gallery-2022-02-06-01-18-39-7596.jpg', 1, '2022-02-06 07:18:40', '2022-02-06 07:18:40'),
(110, 26, 'uploads/custom-images/Gallery-2022-02-06-01-18-40-5773.jpg', 1, '2022-02-06 07:18:45', '2022-02-06 07:18:45'),
(111, 26, 'uploads/custom-images/Gallery-2022-02-06-01-18-45-2598.jpg', 1, '2022-02-06 07:18:47', '2022-02-06 07:18:47'),
(112, 27, 'uploads/custom-images/Gallery-2022-02-06-02-11-24-8095.jpg', 1, '2022-02-06 08:11:27', '2022-02-06 08:11:27'),
(113, 27, 'uploads/custom-images/Gallery-2022-02-06-02-11-27-1118.jpg', 1, '2022-02-06 08:11:31', '2022-02-06 08:11:31'),
(114, 27, 'uploads/custom-images/Gallery-2022-02-06-02-11-31-8977.jpg', 1, '2022-02-06 08:11:34', '2022-02-06 08:11:34'),
(115, 27, 'uploads/custom-images/Gallery-2022-02-06-02-11-34-3028.jpg', 1, '2022-02-06 08:11:37', '2022-02-06 08:11:37'),
(116, 28, 'uploads/custom-images/Gallery-2022-02-06-02-19-12-2358.jpg', 1, '2022-02-06 08:19:14', '2022-02-06 08:19:14'),
(117, 28, 'uploads/custom-images/Gallery-2022-02-06-02-19-14-4172.jpg', 1, '2022-02-06 08:19:16', '2022-02-06 08:19:16'),
(118, 28, 'uploads/custom-images/Gallery-2022-02-06-02-19-16-6294.jpg', 1, '2022-02-06 08:19:19', '2022-02-06 08:19:19'),
(119, 28, 'uploads/custom-images/Gallery-2022-02-06-02-19-19-9318.jpg', 1, '2022-02-06 08:19:22', '2022-02-06 08:19:22'),
(120, 29, 'uploads/custom-images/Gallery-2022-02-06-02-26-50-8686.jpg', 1, '2022-02-06 08:26:53', '2022-02-06 08:26:53'),
(121, 29, 'uploads/custom-images/Gallery-2022-02-06-02-26-53-4388.jpg', 1, '2022-02-06 08:26:56', '2022-02-06 08:26:56'),
(122, 29, 'uploads/custom-images/Gallery-2022-02-06-02-27-09-5545.jpg', 1, '2022-02-06 08:27:13', '2022-02-06 08:27:13'),
(123, 30, 'uploads/custom-images/Gallery-2022-02-06-02-33-04-2790.jpg', 1, '2022-02-06 08:33:08', '2022-02-06 08:33:08'),
(124, 30, 'uploads/custom-images/Gallery-2022-02-06-02-33-08-6916.jpg', 1, '2022-02-06 08:33:12', '2022-02-06 08:33:12'),
(125, 30, 'uploads/custom-images/Gallery-2022-02-06-02-33-12-6279.jpg', 1, '2022-02-06 08:33:14', '2022-02-06 08:33:14'),
(126, 31, 'uploads/custom-images/Gallery-2022-02-06-02-45-38-6989.jpg', 1, '2022-02-06 08:45:41', '2022-02-06 08:45:41'),
(127, 31, 'uploads/custom-images/Gallery-2022-02-06-02-45-41-5607.jpg', 1, '2022-02-06 08:45:45', '2022-02-06 08:45:45'),
(128, 31, 'uploads/custom-images/Gallery-2022-02-06-02-45-45-4638.jpg', 1, '2022-02-06 08:45:47', '2022-02-06 08:45:47'),
(129, 32, 'uploads/custom-images/Gallery-2022-02-06-02-50-58-7855.jpg', 1, '2022-02-06 08:51:01', '2022-02-06 08:51:01'),
(130, 32, 'uploads/custom-images/Gallery-2022-02-06-02-51-01-8146.jpg', 1, '2022-02-06 08:51:03', '2022-02-06 08:51:03'),
(131, 32, 'uploads/custom-images/Gallery-2022-02-06-02-51-03-1715.jpg', 1, '2022-02-06 08:51:06', '2022-02-06 08:51:06'),
(132, 15, 'uploads/custom-images/Gallery-2022-02-10-08-40-18-3475.jpg', 1, '2022-02-10 02:40:20', '2022-02-10 02:40:20'),
(133, 15, 'uploads/custom-images/Gallery-2022-02-10-08-41-11-7796.jpg', 1, '2022-02-10 02:41:13', '2022-02-10 02:41:13'),
(134, 5, 'uploads/custom-images/Gallery-2022-02-10-09-37-56-8233.jpg', 1, '2022-02-10 03:37:59', '2022-02-10 03:37:59'),
(135, 5, 'uploads/custom-images/Gallery-2022-02-10-09-37-59-8236.jpg', 1, '2022-02-10 03:38:02', '2022-02-10 03:38:02'),
(136, 5, 'uploads/custom-images/Gallery-2022-02-10-09-38-02-9183.jpg', 1, '2022-02-10 03:38:05', '2022-02-10 03:38:05'),
(137, 3, 'uploads/custom-images/Gallery-2022-02-10-09-51-53-6026.jpg', 1, '2022-02-10 03:51:56', '2022-02-10 03:51:56'),
(138, 33, 'uploads/custom-images/Gallery-2022-02-10-09-57-29-8195.jpg', 1, '2022-02-10 03:57:32', '2022-02-10 03:57:32'),
(139, 33, 'uploads/custom-images/Gallery-2022-02-10-09-57-32-4321.jpg', 1, '2022-02-10 03:57:34', '2022-02-10 03:57:34'),
(140, 33, 'uploads/custom-images/Gallery-2022-02-10-09-57-34-3897.jpg', 1, '2022-02-10 03:57:38', '2022-02-10 03:57:38'),
(141, 6, 'uploads/custom-images/Gallery-2022-02-10-12-45-19-8939.jpg', 1, '2022-02-10 06:45:21', '2022-02-10 06:45:21'),
(142, 6, 'uploads/custom-images/Gallery-2022-02-10-12-45-21-2968.jpg', 1, '2022-02-10 06:45:23', '2022-02-10 06:45:23'),
(144, 6, 'uploads/custom-images/Gallery-2022-02-10-12-47-38-8119.jpg', 1, '2022-02-10 06:47:41', '2022-02-10 06:47:41'),
(145, 6, 'uploads/custom-images/Gallery-2022-02-10-12-47-41-2708.jpg', 1, '2022-02-10 06:47:45', '2022-02-10 06:47:45');

-- --------------------------------------------------------

--
-- Table structure for table `product_reports`
--

CREATE TABLE `product_reports` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `seller_id` int NOT NULL DEFAULT '0',
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_reports`
--

INSERT INTO `product_reports` (`id`, `user_id`, `product_id`, `seller_id`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(4, 4, 11, 2, 'Publishing and graphic design, Lorem ipsum is a pl', 'Publishing and graphic design, Lorem ipsum is a pl', '2022-01-31 09:14:05', '2022-01-31 09:14:05'),
(6, 1, 24, 3, 'Product Report Subject', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '2022-02-07 06:41:01', '2022-02-07 06:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `product_report_images`
--

CREATE TABLE `product_report_images` (
  `id` bigint UNSIGNED NOT NULL,
  `product_report_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `product_vendor_id` int NOT NULL DEFAULT '0',
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `user_id`, `product_vendor_id`, `review`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(4, 1, 4, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 3, 1, '2022-01-31 02:15:26', '2022-01-31 09:18:40'),
(6, 11, 4, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 3, 1, '2022-01-31 09:14:13', '2022-01-31 09:18:39'),
(7, 24, 1, 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 4, 1, '2022-02-07 06:41:15', '2022-02-07 08:05:13'),
(8, 7, 1, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 5, 1, '2022-02-07 06:41:44', '2024-08-15 21:36:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_review_galleries`
--

CREATE TABLE `product_review_galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `product_review_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_specifications`
--

CREATE TABLE `product_specifications` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `product_specification_key_id` int NOT NULL,
  `specification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_specifications`
--

INSERT INTO `product_specifications` (`id`, `product_id`, `product_specification_key_id`, `specification`, `created_at`, `updated_at`) VALUES
(4, 7, 2, 'Blue, Red, Green', '2022-01-31 07:20:56', '2022-01-31 07:20:56'),
(5, 7, 4, '64GB', '2022-01-31 07:20:56', '2022-01-31 07:20:56'),
(6, 12, 2, 'Black, Golden, Silver', '2022-02-06 01:57:49', '2022-02-06 01:57:49'),
(7, 12, 6, '2GB, 4GB, 8GB', '2022-02-06 01:57:49', '2022-02-06 01:57:49'),
(8, 12, 7, 'Intel', '2022-02-06 01:57:49', '2022-02-06 01:57:49'),
(9, 12, 8, 'LED', '2022-02-06 01:57:49', '2022-02-06 01:57:49'),
(10, 12, 11, '0-128GB', '2022-02-06 01:57:49', '2022-02-06 01:57:49'),
(11, 12, 12, '1GB', '2022-02-06 01:57:49', '2022-02-06 01:57:49'),
(12, 12, 13, '10th', '2022-02-06 01:57:49', '2022-02-06 01:57:49'),
(13, 12, 14, '1000', '2022-02-06 01:57:49', '2022-02-06 01:57:49'),
(14, 13, 6, '2GB, 4GB, 8GB', '2022-02-06 02:13:07', '2022-02-06 02:13:07'),
(15, 13, 7, 'Intel Core i3', '2022-02-06 02:13:07', '2022-02-06 02:13:07'),
(16, 13, 8, 'IPS', '2022-02-06 02:13:07', '2022-02-06 02:13:07'),
(17, 13, 9, 'Intel UHD Graphics', '2022-02-06 02:13:07', '2022-02-06 02:13:07'),
(18, 13, 10, '15.6\"', '2022-02-06 02:13:07', '2022-02-06 02:13:07'),
(19, 13, 11, '257-512GB', '2022-02-06 02:13:07', '2022-02-06 02:13:07'),
(20, 13, 13, '10th', '2022-02-06 02:13:07', '2022-02-06 02:13:07'),
(21, 14, 2, 'Black, Golden', '2022-02-06 02:23:51', '2022-02-06 02:23:51'),
(22, 14, 6, '2GB, 4GB, 8GB', '2022-02-06 02:23:51', '2022-02-06 02:23:51'),
(23, 14, 7, 'Intel Core i3,Intel', '2022-02-06 02:23:51', '2022-02-06 02:23:51'),
(24, 14, 8, '15.6\", 16.2\"', '2022-02-06 02:23:51', '2022-02-06 02:23:51'),
(25, 14, 9, 'Intel', '2022-02-06 02:23:51', '2022-02-06 02:23:51'),
(26, 14, 14, '1000', '2022-02-06 02:23:51', '2022-02-06 02:23:51'),
(27, 14, 12, '1GB & Under', '2022-02-06 02:23:51', '2022-02-06 02:23:51'),
(28, 14, 13, '8th', '2022-02-06 02:23:51', '2022-02-06 02:23:51'),
(29, 3, 15, '1462cc, 4-stroke, liquid-cooled, SOHC, 54˚, V-twin', '2022-02-06 03:57:55', '2022-02-06 03:57:55'),
(30, 3, 16, '96.0 mm x 101.0 mm (3.78 in. x 3.98 in.)', '2022-02-06 03:57:55', '2022-02-06 03:57:55'),
(31, 3, 17, '9.5:1', '2022-02-06 03:57:55', '2022-02-06 03:57:55'),
(32, 3, 18, 'Suzuki fuel injection with SDTV', '2022-02-06 03:57:55', '2022-02-06 03:57:55'),
(33, 3, 19, 'Electric', '2022-02-06 03:57:55', '2022-02-06 03:57:55'),
(34, 3, 20, 'Wet sump', '2022-02-06 03:57:55', '2022-02-06 03:57:55'),
(35, 4, 20, 'Wet sump', '2022-02-06 04:03:31', '2022-02-06 04:03:31'),
(36, 4, 19, 'Electric', '2022-02-06 04:03:31', '2022-02-06 04:03:31'),
(37, 4, 18, 'Suzuki fuel injection with SDTV', '2022-02-06 04:03:31', '2022-02-06 04:03:31'),
(38, 4, 17, '9.5:1', '2022-02-06 04:03:31', '2022-02-06 04:03:31'),
(39, 4, 16, '96.0 mm x 101.0 mm (3.78 in. x 3.98 in.)', '2022-02-06 04:03:31', '2022-02-06 04:03:31'),
(40, 4, 15, '1462cc, 4-stroke, liquid-cooled, SOHC, 54˚, V-twin', '2022-02-06 04:03:31', '2022-02-06 04:03:31'),
(41, 22, 28, '347mm', '2022-02-06 04:44:51', '2022-02-06 04:44:51'),
(42, 22, 27, '705mm', '2022-02-06 04:44:51', '2022-02-06 04:44:51'),
(43, 22, 26, '130mm', '2022-02-06 04:44:51', '2022-02-06 04:44:51'),
(44, 22, 25, '1710mm', '2022-02-06 04:44:51', '2022-02-06 04:44:51'),
(45, 22, 24, '1130mm', '2022-02-06 04:44:51', '2022-02-06 04:44:51'),
(46, 22, 23, '845mm', '2022-02-06 04:44:51', '2022-02-06 04:44:51'),
(47, 22, 22, '2480mm', '2022-02-06 04:44:51', '2022-02-06 04:44:51'),
(48, 8, 2, 'Blue, Black', '2022-02-06 06:12:25', '2022-02-06 06:12:25'),
(49, 8, 4, '128GB', '2022-02-06 06:12:25', '2022-02-06 06:12:25'),
(50, 8, 3, '48px', '2022-02-06 06:12:25', '2022-02-06 06:12:25'),
(51, 8, 6, '12GB', '2022-02-06 06:12:25', '2022-02-06 06:12:25'),
(52, 8, 21, '6 Month', '2022-02-06 06:12:25', '2022-02-06 06:12:25'),
(53, 11, 2, 'Blue, Red, Green, White, Navy blue', '2022-02-06 06:37:04', '2022-02-06 06:37:04'),
(54, 11, 1, 'Small, Large, Medium, Extra Large', '2022-02-06 06:37:04', '2022-02-06 06:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_specification_keys`
--

CREATE TABLE `product_specification_keys` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_specification_keys`
--

INSERT INTO `product_specification_keys` (`id`, `key`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Size', 1, '2022-01-30 09:42:48', '2022-02-06 04:39:19'),
(2, 'Color', 1, '2022-01-30 09:42:53', '2022-01-30 09:42:53'),
(3, 'Camera', 1, '2022-01-30 09:42:59', '2022-01-30 09:42:59'),
(4, 'Memory', 1, '2022-01-30 09:43:06', '2022-01-30 09:43:06'),
(6, 'Ram', 1, '2022-02-06 01:51:56', '2022-02-06 04:39:29'),
(7, 'Processor Type', 1, '2022-02-06 01:52:32', '2022-02-06 01:52:32'),
(8, 'Display Type', 1, '2022-02-06 01:52:58', '2022-02-06 01:52:58'),
(9, 'Graphic Card', 1, '2022-02-06 01:53:10', '2022-02-06 01:53:10'),
(10, 'Display Size', 1, '2022-02-06 01:53:21', '2022-02-06 01:53:21'),
(11, 'SSD', 1, '2022-02-06 01:53:34', '2022-02-06 01:53:34'),
(12, 'Graphics Memory', 1, '2022-02-06 01:53:52', '2022-02-06 01:53:52'),
(13, 'Generation', 1, '2022-02-06 01:54:06', '2022-02-06 01:54:06'),
(14, 'Hard Disk (GB)', 1, '2022-02-06 01:54:19', '2022-02-06 01:54:19'),
(15, 'Engine', 1, '2022-02-06 03:54:24', '2022-02-06 03:54:24'),
(16, 'Bore x Stroke', 1, '2022-02-06 03:54:35', '2022-02-06 03:54:35'),
(17, 'Compression Ratio', 1, '2022-02-06 03:54:43', '2022-02-06 03:54:43'),
(18, 'Fuel System', 1, '2022-02-06 03:54:51', '2022-02-06 03:54:51'),
(19, 'Starter', 1, '2022-02-06 03:55:00', '2022-02-06 03:55:00'),
(20, 'Lubrication', 1, '2022-02-06 03:55:09', '2022-02-06 03:55:09'),
(21, 'Warranty', 1, '2022-02-06 03:55:28', '2022-02-06 03:55:28'),
(22, 'Length', 1, '2022-02-06 04:40:17', '2022-02-06 04:40:17'),
(23, 'Width', 1, '2022-02-06 04:40:31', '2022-02-06 04:40:31'),
(24, 'Height', 1, '2022-02-06 04:40:39', '2022-02-06 04:41:01'),
(25, 'Wheelbase', 1, '2022-02-06 04:41:16', '2022-02-06 04:41:16'),
(26, 'Ground Clearence', 1, '2022-02-06 04:41:37', '2022-02-06 04:41:37'),
(27, 'Seat Hight', 1, '2022-02-06 04:41:50', '2022-02-06 04:41:50'),
(28, 'Kerb Weight', 1, '2022-02-06 04:42:09', '2022-02-06 04:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_taxes`
--

CREATE TABLE `product_taxes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_taxes`
--

INSERT INTO `product_taxes` (`id`, `title`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tax None', '0', 1, '2022-01-30 09:41:19', '2022-02-07 02:27:02'),
(2, 'Tax One', '3', 1, '2022-01-30 09:41:37', '2022-01-30 09:41:37'),
(3, 'Tax Two', '5', 1, '2022-01-30 09:41:46', '2022-02-07 02:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 'Color', 1, '2022-01-30 10:43:04', '2022-01-30 10:43:04'),
(2, 6, 'RAM', 1, '2022-01-30 10:43:11', '2022-01-30 10:43:11'),
(3, 8, 'Color', 1, '2022-01-31 07:26:01', '2022-01-31 07:26:01'),
(4, 8, 'RAM', 1, '2022-01-31 07:26:10', '2022-01-31 07:26:10'),
(5, 11, 'Size', 1, '2022-01-31 09:03:17', '2022-01-31 09:03:17'),
(6, 2, 'Color', 1, '2022-02-02 06:24:39', '2022-02-02 06:24:39'),
(7, 12, 'RAM', 1, '2022-02-06 01:58:25', '2022-02-06 01:58:25'),
(8, 12, 'COLOR', 1, '2022-02-06 01:58:45', '2022-02-06 01:58:45'),
(9, 12, 'DISPLAY', 1, '2022-02-06 01:59:09', '2022-02-06 01:59:09'),
(10, 13, 'RAM', 1, '2022-02-06 02:15:05', '2022-02-06 02:15:05'),
(11, 33, 'Color', 1, '2022-02-10 04:07:49', '2022-02-10 04:07:49'),
(12, 33, 'Size', 1, '2022-02-10 04:07:55', '2022-02-10 04:07:55'),
(13, 5, 'Color', 1, '2022-02-12 06:54:15', '2022-02-12 06:54:15'),
(14, 5, 'Size', 1, '2022-02-12 06:54:19', '2022-02-12 06:54:19'),
(15, 9, 'Camera', 1, '2022-02-12 06:56:46', '2022-02-12 06:56:46'),
(16, 9, 'RAM', 1, '2022-02-12 06:56:50', '2022-02-12 06:56:50'),
(17, 9, 'Memory', 1, '2022-02-12 07:00:08', '2022-02-12 07:00:08'),
(18, 34, 'Color', 1, '2024-07-13 09:10:58', '2024-07-13 09:10:58'),
(19, 34, 'Size', 1, '2024-07-13 09:11:04', '2024-07-13 09:11:04'),
(20, 16, 'Color', 1, '2024-07-13 09:18:18', '2024-07-13 09:18:18'),
(21, 16, 'Size', 1, '2024-07-13 09:18:27', '2024-07-13 09:18:27');

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_items`
--

CREATE TABLE `product_variant_items` (
  `id` bigint UNSIGNED NOT NULL,
  `product_variant_id` int NOT NULL,
  `product_variant_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `is_default` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_variant_items`
--

INSERT INTO `product_variant_items` (`id`, `product_variant_id`, `product_variant_name`, `product_id`, `name`, `price`, `status`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 1, 'Color', 6, 'Blue', 3, 1, 1, '2022-01-30 10:43:27', '2022-01-30 10:43:27'),
(2, 1, 'Color', 6, 'Red', 0, 1, 0, '2022-01-30 10:43:39', '2022-01-30 10:43:39'),
(3, 2, 'RAM', 6, '8GB', 2, 1, 1, '2022-01-30 10:43:55', '2022-01-30 10:43:55'),
(4, 2, 'RAM', 6, '32GB', 5, 1, 0, '2022-01-30 10:44:16', '2022-01-30 10:44:16'),
(5, 3, 'Color', 8, 'Blue', 5, 1, 1, '2022-01-31 07:26:31', '2022-01-31 07:26:31'),
(6, 3, 'Color', 8, 'Red', 0, 1, 0, '2022-01-31 07:26:39', '2022-01-31 07:26:39'),
(7, 3, 'Color', 8, 'Green', 3, 1, 0, '2022-01-31 07:27:02', '2022-01-31 07:27:02'),
(8, 4, 'RAM', 8, '4GB', 0, 1, 1, '2022-01-31 07:27:15', '2022-01-31 07:27:15'),
(9, 4, 'RAM', 8, '8GB', 5, 1, 0, '2022-01-31 07:27:24', '2022-01-31 07:27:24'),
(10, 5, 'Size', 11, 'Small', 0, 1, 1, '2022-01-31 09:03:29', '2022-02-06 06:44:43'),
(11, 6, 'Color', 2, 'Red', 3, 1, 1, '2022-02-02 06:24:59', '2022-02-02 06:24:59'),
(12, 7, 'RAM', 12, '2GB', 0, 1, 1, '2022-02-06 01:59:27', '2022-02-06 01:59:27'),
(13, 7, 'RAM', 12, '4GB', 10, 1, 0, '2022-02-06 01:59:41', '2022-02-06 01:59:41'),
(14, 7, 'RAM', 12, '8GB', 5, 1, 0, '2022-02-06 01:59:53', '2022-02-06 01:59:53'),
(15, 8, 'COLOR', 12, 'Black', 0, 1, 1, '2022-02-06 02:00:22', '2022-02-06 02:00:22'),
(16, 8, 'COLOR', 12, 'Golden', 3, 1, 0, '2022-02-06 02:00:33', '2022-02-06 02:00:33'),
(17, 8, 'COLOR', 12, 'Silver', 7, 1, 0, '2022-02-06 02:00:49', '2022-02-06 02:00:49'),
(18, 9, 'DISPLAY', 12, '15\"', 0, 1, 1, '2022-02-06 02:01:21', '2022-02-06 02:01:21'),
(19, 9, 'DISPLAY', 12, '16\"', 12, 1, 0, '2022-02-06 02:01:35', '2022-02-06 02:01:35'),
(20, 9, 'DISPLAY', 12, '18\"', 2, 1, 0, '2022-02-06 02:01:46', '2022-02-06 02:01:46'),
(21, 10, 'RAM', 13, '2GB', 0, 1, 1, '2022-02-06 02:15:21', '2022-02-06 02:15:21'),
(22, 10, 'RAM', 13, '4GB', 5, 1, 0, '2022-02-06 02:15:33', '2022-02-06 02:15:33'),
(23, 10, 'RAM', 13, '8GB', 8, 1, 0, '2022-02-06 02:15:45', '2022-02-06 02:15:45'),
(25, 5, 'Size', 11, 'Medium', 10, 1, 0, '2022-02-06 06:45:06', '2022-02-06 06:45:06'),
(26, 5, 'Size', 11, 'Large', 2, 1, 0, '2022-02-06 06:45:18', '2022-02-06 06:45:18'),
(27, 5, 'Size', 11, 'Extra Large', 3, 1, 0, '2022-02-06 06:45:28', '2022-02-06 06:45:28'),
(28, 11, 'Color', 33, 'Black', 3, 1, 1, '2022-02-10 04:08:08', '2022-02-10 04:08:08'),
(29, 11, 'Color', 33, 'Yellow', 5, 1, 0, '2022-02-10 04:08:42', '2022-02-10 04:08:42'),
(30, 11, 'Color', 33, 'Navy Blue', 0, 1, 0, '2022-02-10 04:09:07', '2022-02-10 04:09:07'),
(31, 12, 'Size', 33, 'Small', 0, 1, 1, '2022-02-10 04:09:25', '2022-02-10 04:09:25'),
(32, 12, 'Size', 33, 'Medium', 5, 1, 0, '2022-02-10 04:09:36', '2022-02-10 04:09:36'),
(33, 12, 'Size', 33, 'Large', 7, 1, 0, '2022-02-10 04:09:45', '2022-02-10 04:09:45'),
(34, 13, 'Color', 5, 'Red', 0, 1, 1, '2022-02-12 06:54:28', '2022-02-12 06:54:28'),
(35, 13, 'Color', 5, 'Blue', 2, 1, 0, '2022-02-12 06:54:35', '2022-02-12 06:54:35'),
(36, 13, 'Color', 5, 'Navy Blue', 6, 1, 0, '2022-02-12 06:54:49', '2022-02-12 06:54:49'),
(37, 14, 'Size', 5, 'Medium', 0, 1, 1, '2022-02-12 06:55:03', '2022-02-12 06:55:03'),
(38, 14, 'Size', 5, 'Small', 0, 1, 0, '2022-02-12 06:55:09', '2022-02-12 06:55:09'),
(39, 14, 'Size', 5, 'Large', 7, 1, 0, '2022-02-12 06:55:18', '2022-02-12 06:55:18'),
(40, 15, 'Camera', 9, '44PX', 0, 1, 1, '2022-02-12 06:57:37', '2022-02-12 06:57:37'),
(41, 15, 'Camera', 9, '68PX', 3, 1, 0, '2022-02-12 06:57:47', '2022-02-12 06:57:47'),
(42, 15, 'Camera', 9, '128PX', 2, 1, 0, '2022-02-12 06:57:58', '2022-02-12 06:57:58'),
(43, 16, 'RAM', 9, '32GB', 3, 1, 1, '2022-02-12 06:58:14', '2022-02-12 06:58:14'),
(44, 16, 'RAM', 9, '68GB', 1, 1, 0, '2022-02-12 06:59:09', '2022-02-12 06:59:09'),
(45, 16, 'RAM', 9, '128GB', 2, 1, 0, '2022-02-12 06:59:20', '2022-02-12 06:59:20'),
(46, 17, 'Memory', 9, '32GB', 3, 1, 1, '2022-02-12 07:00:19', '2022-02-12 07:00:19'),
(47, 17, 'Memory', 9, '64GB', 3, 1, 0, '2022-02-12 07:00:30', '2022-02-12 07:00:30'),
(48, 18, 'Color', 34, 'Red', 0, 1, 0, '2024-07-13 09:11:16', '2024-07-13 09:11:31'),
(49, 18, 'Color', 34, 'Green', 0, 1, 1, '2024-07-13 09:11:31', '2024-07-13 09:11:31'),
(50, 18, 'Color', 34, 'Blue', 0, 1, 0, '2024-07-13 09:11:41', '2024-07-13 09:11:41'),
(51, 18, 'Color', 34, 'Orange', 0, 1, 0, '2024-07-13 09:11:52', '2024-07-13 09:11:52'),
(52, 19, 'Size', 34, 'xs', 0, 1, 1, '2024-07-13 09:12:10', '2024-07-13 09:12:10'),
(53, 19, 'Size', 34, 'sm', 0, 1, 0, '2024-07-13 09:12:21', '2024-07-13 09:12:21'),
(54, 19, 'Size', 34, 'lg', 0, 1, 0, '2024-07-13 09:12:29', '2024-07-13 09:12:29'),
(55, 20, 'Color', 16, 'Red', 0, 1, 1, '2024-07-13 09:18:43', '2024-07-13 09:18:43'),
(56, 20, 'Color', 16, 'Green', 0, 1, 0, '2024-07-13 09:31:09', '2024-07-13 09:31:09'),
(57, 20, 'Color', 16, 'Blue', 0, 1, 0, '2024-07-13 09:31:28', '2024-07-13 09:31:28'),
(58, 21, 'Size', 16, 'xs', 0, 1, 1, '2024-07-13 09:31:48', '2024-07-13 09:31:48'),
(59, 21, 'Size', 16, 'sm', 0, 1, 0, '2024-07-13 09:32:00', '2024-07-13 09:32:00'),
(60, 21, 'Size', 16, 'lg', 0, 1, 0, '2024-07-13 09:32:05', '2024-07-13 09:32:05');

-- --------------------------------------------------------

--
-- Table structure for table `pusher_credentails`
--

CREATE TABLE `pusher_credentails` (
  `id` bigint UNSIGNED NOT NULL,
  `app_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_cluster` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pusher_credentails`
--

INSERT INTO `pusher_credentails` (`id`, `app_id`, `app_key`, `app_secret`, `app_cluster`, `created_at`, `updated_at`) VALUES
(1, '1338069', 'e013174602072a186b1d', '46de951521010c14b205', 'mt1', NULL, '2022-01-29 12:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `razorpay_payments`
--

CREATE TABLE `razorpay_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_rate` double NOT NULL DEFAULT '1',
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `secret_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `razorpay_payments`
--

INSERT INTO `razorpay_payments` (`id`, `status`, `name`, `currency_rate`, `country_code`, `currency_code`, `description`, `image`, `color`, `key`, `secret_key`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ecommerce', 74.66, 'IN', 'INR', 'This is description', 'uploads/website-images/razorpay-2021-12-14-06-35-49-6602.png', '#2d15e5', 'rzp_test_K7CipNQYyyMPiS', 'zSBmNMorJrirOrnDrbOd1ALO', NULL, '2022-02-07 02:30:31');

-- --------------------------------------------------------

--
-- Table structure for table `return_policies`
--

CREATE TABLE `return_policies` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `return_policies`
--

INSERT INTO `return_policies` (`id`, `title`, `details`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Policy one', 'Lorem Ipsum is simply dummy text of the printing', 1, '2022-01-30 09:42:25', '2022-02-07 02:28:06'),
(2, 'Policy two', 'Lorem Ipsum is simply dummy text of the printing', 1, '2022-01-30 09:42:35', '2022-02-07 02:28:16');

-- --------------------------------------------------------

--
-- Table structure for table `seller_mail_logs`
--

CREATE TABLE `seller_mail_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `seller_id` int NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller_mail_logs`
--

INSERT INTO `seller_mail_logs` (`id`, `seller_id`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 2, 'Please Confirm your valid address', '<p>Please Confirm your valid address<br></p>', '2022-01-31 08:45:07', '2022-01-31 08:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `seller_withdraws`
--

CREATE TABLE `seller_withdraws` (
  `id` bigint UNSIGNED NOT NULL,
  `seller_id` int NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` double NOT NULL,
  `withdraw_amount` double NOT NULL,
  `withdraw_charge` double NOT NULL,
  `account_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `approved_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller_withdraws`
--

INSERT INTO `seller_withdraws` (`id`, `seller_id`, `method`, `total_amount`, `withdraw_amount`, `withdraw_charge`, `account_info`, `status`, `approved_date`, `created_at`, `updated_at`) VALUES
(3, 2, 'Bank Payment', 600, 570, 5, 'Bank of America,\r\nAccount : 54312343135132231', 1, '2022-02-07', '2022-02-07 07:01:43', '2022-02-07 07:02:08'),
(4, 2, 'Bank Payment', 800, 760, 5, 'Bank of America,\r\nAccount : 54312343135132231', 1, '2024-07-21', '2022-02-07 07:07:04', '2024-07-21 12:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `page_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `page_name`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', 'Home page - Ecommerce', 'Home Page', NULL, '2022-01-30 10:50:34'),
(2, 'About Us', 'About Us - Ecommerce', 'About Us', NULL, '2022-02-07 02:39:59'),
(3, 'Contact Us', 'Contact Us - Ecommerce', 'Contact Us', NULL, '2022-01-12 02:21:46'),
(4, 'Brand Page', 'Brands - Ecommerce', 'Our Brand', NULL, '2022-02-07 02:40:09'),
(5, 'Seller Page', 'Our Seller - Ecommerce', 'Seller Page', NULL, '2022-02-07 02:40:16'),
(6, 'Blog', 'Blog - Ecommerce', 'Blog', NULL, '2022-02-07 02:40:23'),
(7, 'Campaign', 'Campaign - Ecommerce', 'Campaign', NULL, '2022-02-07 02:40:29'),
(8, 'Flash Deal', 'Flash Deal - Ecommerce', 'Flash Deal', NULL, '2022-02-07 02:40:43'),
(9, 'Shop Page', 'Shop Page - Ecommerce', 'Shop Page', NULL, '2022-02-07 02:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icon`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Free Delivery', 'fas fa-plane', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 1, '2022-01-30 10:39:33', '2022-02-07 07:19:57'),
(2, 'Money Back Guarantee', 'far fa-money-bill-alt', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 1, '2022-02-07 07:20:30', '2022-02-07 07:20:30'),
(3, '24/7 Customer Suppor', 'fas fa-phone-volume', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 1, '2022-02-07 07:21:41', '2022-02-07 07:21:41'),
(4, 'Secure Online Payment', 'fab fa-speakap', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 1, '2022-02-07 07:22:21', '2022-02-07 07:22:21');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `maintenance_mode` int NOT NULL DEFAULT '0',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_user_register` int NOT NULL DEFAULT '1',
  `enable_multivendor` int NOT NULL DEFAULT '1',
  `enable_subscription_notify` int NOT NULL DEFAULT '1',
  `enable_save_contact_message` int NOT NULL DEFAULT '1',
  `text_direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LTR',
  `timezone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_lg_header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_sm_header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topbar_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topbar_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_rate` double NOT NULL DEFAULT '1',
  `show_product_qty` int NOT NULL DEFAULT '1',
  `theme_one` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_two` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_condition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_charge_multiple` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `maintenance_mode`, `logo`, `favicon`, `contact_email`, `enable_user_register`, `enable_multivendor`, `enable_subscription_notify`, `enable_save_contact_message`, `text_direction`, `timezone`, `sidebar_lg_header`, `sidebar_sm_header`, `topbar_phone`, `topbar_email`, `menu_phone`, `currency_name`, `currency_icon`, `currency_rate`, `show_product_qty`, `theme_one`, `theme_two`, `seller_condition`, `created_at`, `updated_at`, `shipping_charge_multiple`) VALUES
(1, 1, 'uploads/website-images/logo--2024-09-30-10-02-02-4658.png', 'uploads/website-images/favicon--2024-09-03-07-46-40-7081.png', 'info@oshin.com.bd', 1, 1, 1, 0, 'ltr', NULL, 'Oshin', 'Oshin', '+88 01322 406920', 'info@oshin.com.bd', '+88 01322 406920', 'BDT', '৳', 85.76, 1, '#000000', '#930a02', '<h3>Our Terms and Conditions</h3><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Welcome to the&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">oshin.com.bd</a>&nbsp;website, owned and operated by&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">Oshin Trading</a>. We are an online marketplace and these are the terms and conditions governing your access and utilization of&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">oshin.com.bd</a>&nbsp;along with its cognate sub-domains, sites, mobile app, accommodations and implements.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Please read these Terms and Conditions (“Terms”, “Terms and Conditions”) conscientiously afore utilizing the&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">https://oshin.com.bd</a>/ website (the “Accommodation”) owned and operated by&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">Oshin Trading</a>&nbsp;(“us”, “we”, or “our”).</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Your access to and utilization of the Accommodation is conditioned on your acceptance of and compliance with these Terms. These Terms apply to all visitors, users and others who access or utilize the Accommodation.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">By accessing or utilizing the Accommodation you concur to be bound by these Terms. If you disaccord with any component of the terms then you may not access the Accommodation.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Accounts&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">When you create an account with us, you must provide us information that is precise, consummate, and current at all times. Failure to do so constitutes a breach of the Terms, which may result in immediate termination of your account on our Accommodation.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">You are responsible for safeguarding the password that you utilize to access the Accommodation and for any activities or actions under your password, whether your password is with our Accommodation or a third-party accommodation.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">You accede not to disclose your password to any third party. You must notify us immediately upon becoming vigilant of any breach of security or unauthorized utilization of your account.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Privacy</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Please review our Privacy Policy, which additionally governs your visit to the Site. The personal information / data provided to us by you or your utilization of the Site will be treated as rigorously confidential, in accordance with our Privacy Policy and applicable laws and regulations. If you remonstrate to your information being transferred or utilized in the manner designated in the Privacy Acquiescent, please do not utilize the Site.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Platform for Communication&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">You concur, understand and acknowledge that the Site is an online platform that enables you to purchase&nbsp;<a href=\"http://www.giftemotion.com/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">products</a>&nbsp;listed at the price denoted therein at any time from any location utilizing a payment method of your cull. You further concur and acknowledge that we are only a facilitator and cannot be a party to or control in any manner any transactions on the Site or on a payment gateway as made available to you by aamarPay. Accordingly, the contract of sale of products on the Site shall be a stringently bipartite contract between you and the sellers on our Site while the payment processing occurs between you, the accommodation provider and in case of prepayments with electronic cards your issuer bank. Accordingly, the contract of payment on the Site shall be stringently a bipartite contract between you and the accommodation provider as listed on our Site.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Availability of the Site&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We will do our best to ascertain that access to the Site is consistently available and is uninterrupted and hassle-free. However, due to the nature of the Internet and the nature of the Site, this cannot be ensured. Supplementally, your access to the Site may adscititiously be infrequently suspended or restricted to sanction for repairs, maintenance, or the prelude of incipient facilities or accommodations at any time without prior notice. We will endeavor to inhibit the frequency and duration of any such suspension or restriction.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Restricted Activities&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">You agree and undertake not to perform restricted activities listed within this section; undertaking these activities will result in an immediate rescindment of your account, accommodations, reviews, orders or any subsisting incomplete transaction with us and in rigorous cases may withal result in licit action.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Refusal to comply with the Terms and Conditions described herein or any other guidelines and policies cognate to the utilization of the Site as available on the Site at all times.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Impersonate any person or entity or to mendaciously state or otherwise misrepresent your affiliation with any person or entity.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Use the Site for illicit purposes.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Attempt to gain unauthorized access to or otherwise interfere or disrupt other computer systems or networks connected to the Platform or Accommodations.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Interfere with another’s utilization and delectation of the Site.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Post, promote or transmit through the Site any precluded materials as deemed illicit by The People’s Republic of Bangladesh.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Use or upload, in any way, any software or material that contains, or which you have reason to suspect that contains, viruses, damaging components, malignant code or deleterious components which may impair or corrupt the Site’s data or damage or interfere with the operation of another Customer’s computer or mobile contrivance or the Site and utilize the Site other than in conformance with the acceptable use policies of any connected computer networks, any applicable Internet standards and any other applicable laws.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Submissions&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Anything that you submit to the Site and/or provide to us, including reviews, will become our sole and exclusive property and shall not be returned to you. In integration to the rights applicable to any Submission, when you post comments or reviews to the Site, you additionally grant us the right to utilize the denomination that you submit, in connection with such review, comment, or other content. You shall not utilize a mendacious electronic-mail address, pretend to be someone other than yourself or otherwise bamboozle us or third parties as to the inchoation of any Submissions. We may, but shall not be obligated to, abstract or edit any Submissions without any notice or licit course applicable to us in this regard.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Claims against Objectionable Content&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">If you believe that any content on the Site is illicit, offensive (including but not circumscribed to material that is sexually explicit content or which promotes racism, bigotry, detestation or physical harm), illusory, bamboozling, abusive, indecent, harassing, blasphemous, defamatory, libelous, obscene, pornographic, pedophilic or menacing; ethnically objectionable, disparaging; or is otherwise injurious to third parties; or relates to or promotes mazuma laundering or wagering; or is inimical to minors in any way; or impersonates another person; or threatens the unity, integrity, security or sovereignty of Bangladesh or cordial cognations with peregrine States; or objectionable or otherwise unlawful in any manner whatsoever; or which consists of or contains software viruses, (“objectionable content”), please notify us immediately by following by inditing to us on&nbsp;<a href=\"https://oshin.com.bd/contact-us/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">info@oshin.com.bd</a>&nbsp;. We will make all practical endeavors to investigate and abstract valid objectionable content repined about within a plausible duration.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Claims against Infringing Content&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">If you believe that your astute property rights have been utilized in a way that gives ascend to concerns of infringement, please inscribe to us at&nbsp;<a href=\"https://oshin.com.bd/contact-us/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">info@oshin.com.bd</a>&nbsp;and we will make all possible efforts to address your solicitousness within a plausibly short time frame. Please ascertain to provide your designation, address, contact information and as many germane details of the claim including instances of infringement, proof of infringement amongst other. Please note that providing incomplete details will render your claim invalid and unutilizable for licit purposes. In integration, providing mendacious or illuding information may be considered a licit offense and may be followed by licit proceedings.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Trademarks and Copyrights&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\"><a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">oshin.com.bd</a>,&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">Oshin</a>&nbsp;logo and other marks designated on our Site are trademarks. Our graphics, logos, page headers, button icons, scripts and accommodation denominations are the trademarks or trade dress and may not be utilized in connection with any product or accommodation that does not belong to us or in any manner that is liable to cause perplexity among customers, or in any manner that disparages or discredits us. All other trademarks that appear on this Site are the property of their respective owners, who may or may not be affiliated with, connected to, or sponsored by us.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">All astute property rights, whether registered or unregistered, in the Site, information content on the Site and all the website design, including, but not constrained to text, graphics, software, photos, video, music, sound, and their cull and arrangement, and all software compilations, underlying source code and software shall remain our property. The entire contents of the Site withal are forefended by copyright as a collective work under Bangladeshi copyright laws and international conventions. All rights are reserved.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Disclaimer</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">You acknowledge that you are accessing the accommodations on the Site and transacting at your own risk and are utilizing your best and prudent discernment afore entering into any transactions through the Site. We shall neither be liable nor responsible for any actions or inactions of manufacturers for any breach of conditions, representations or warranties by the manufacturers of the products nor hereby expressly disclaim and any responsibility and liability in that regard. We shall neither be liable nor responsible for any actions or inactions of any other accommodation provider as listed on our Site including the payment gateway provider.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Communicating With Us</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">When you visit the Site, or send e-mails to us, you are communicating with us electronically.&nbsp; We may communicate with you by e-mail, SMS, phone call or by any other mode of communication we opt to employ. For contractual purposes, you consent to receive communications (including transactional, promotional and/or commercial messages), from us with veneration to your utilization of the website (and/or placement of your order) and concur to treat all modes of communication with the same paramount.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Losses</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We will not be responsible for any business or personal losses (including but not inhibited to loss of profits, revenue, contracts, anticipated savings, data, goodwill, or wasted expenditure) or any other indirect or consequential loss that is not plausibly prognosticable to both you and us when you commenced utilizing the Site.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Events beyond Our Control&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We will not be held responsible for any delay or failure to comply with our obligations under these conditions if the delay or failure arises from any cause which is beyond our plausible control. This condition does not affect your statutory rights.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Return and Refund&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Please review our Return and Refund Policy for details.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Pricing, Availability and Order Processing</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">All prices are listed in Bangladeshi Taka (BDT) and are inclusive of VAT and are listed on the Site by the seller that is selling the product or accommodation. Items in your Shopping Cart will always reflect the most recent price exhibited on the item’s product detail page. Please note that this price may differ from the price shown for the item when you first placed it in your cart. Placing an item in your cart does not reserve the price shown at that time. It is withal possible that an item’s price may decrease between the time you place it in your basket and the time you purchase it.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We do not offer price matching for any items sold by any seller on our Site or other websites. We are resolute to provide the most precise pricing information on the Site to our users; however, errors may still occur, such as cases when the price of an item is not exhibited correctly on the Site. As such, we reserve the right to reluct or abrogate any order. In the event that an item is mispriced, we may, at our own discretion, either contact you for ordinant dictations or rescind your order and notify you of such rescindment. We shall have the right to reluct or abrogate any such orders whether or not the order has been attested and your prepayment processed. If such an abrogation occurs on your prepaid order, our policies for refund will apply. Please note that&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">Oshin</a>&nbsp;possess 100% right on the restitution magnitude. Conventionally refund amount is calculated predicated on the customer paid price after deducting any remotely discount and shipping fee.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We list availability information for products listed on the Site, including on each product information page. Beyond what we verbally express on that page or otherwise on the Site, we cannot be more categorical about availability. Please note that dispatch estimates are just that. They are not ensured dispatch times and should not be relied upon as such. As we process your order, you will be apprised by e-mail or sms if any products you authoritatively mandate turn out to be unavailable.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Please note that there are cases when an order cannot be processed for sundry reasons. The Site reserves the right to reluct or rescind any order for any reason at any given time. You may be asked to provide supplemental verifications or information, including but not inhibited to phone number and address, afore we accept the order.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">In order to evade any fraud with credit or debit cards, we reserve the right to obtain validation of your payment details afore providing you with the product and to verify the personal information you shared with us. This verification can take the shape of an identity, place of residence, or banking information check. The absence of an answer following such an inquiry will automatically cause the abrogation of the order within a plausible timeline. We reserve the right to proceed to direct rescindment of an order for which we suspect a peril of fraudulent utilization of banking instruments or other reasons without prior notice or any subsequent licit liability.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Other Web Sites or Services</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">For different purposes, we utilize many third-party web sites or accommodations that are not owned or controlled by&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">Oshin Trading</a>.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\"><a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">Oshin Trading</a>&nbsp;has no control over, and surmises no responsibility for, the content, privacy policies, or practices of any third party web sites or accommodations. You further acknowledge and accede that&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">Oshin Trading</a>&nbsp;shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with utilization of or reliance on any such content, goods or accommodations available on or through any such web sites or accommodations.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Termination</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We may terminate or suspend access to our Accommodation immediately, without prior notice or liability, for any reason whatsoever, including without circumscription if you breach the Terms.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">All provisions of the Terms which by their nature should survive termination shall survive termination, including, without inhibition, ownership provisions, warranty disclaimers, indemnity and constraints of liability.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We may terminate or suspend your account immediately, without prior notice or liability, for any reason whatsoever, including without inhibition if you breach the Terms.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Upon termination, your right to utilize the Accommodation will immediately cease. If you optate to terminate your account, you may simply discontinue utilizing the Accommodation.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">All provisions of the Terms which by their nature should survive termination shall survive termination, including, without inhibition, ownership provisions, warranty disclaimers, indemnity and circumscriptions of liability.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Governing Law</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">These terms and conditions are governed by and construed in accordance with the laws of The People’s Republic of Bangladesh. You accede that the courts, tribunals and/or quasi-judicial bodies located in Dhaka, Bangladesh shall have the exclusive jurisdiction on any dispute arising inside Bangladesh under this Acquiescent.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Changes&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We reserve the right, at our sole discretion, to modify or supersede these Terms at any time. If a revision is material we will endeavor to provide at least 15 days notice prior to any incipient terms taking effect. What constitutes a material change will be resolute at our sole discretion.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">By perpetuating to access or utilize our Accommodation after those revisions become efficacious, you accede to be bound by the revised terms. If you do not concur to the incipient terms, please stop utilizing the Accommodation.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Others</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Stock availability: The orders are subject to availability of stock.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Delivery Timeline: The distribution might take longer than conventional timeframe/line to be followed by&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">Oshin</a>.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Distribution might be delayed due to coerce majeure event which includes, but not inhibited to, political unrest, political event, national/public holidays, etc.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Cancellation:&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">Oshin</a>&nbsp;retains ineligible right to abrogate any order at its sole discretion prior to dispatch and for any reason which may include, but not inhibited to, the product being mispriced, out of stock, expired, defective, malfunctioned, and containing erroneous information or description arising out of technical or typographical error or for any other reason.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Refund Timeline: If any order is abrogated, the payment against such order shall be restituted within 7 to 15 working days, but it may take longer time in exceptional cases. Provided that received cash back quantity, if any, will be adjusted with the restitution amplitude.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">You corroborate that the product(s) or accommodation(s) injuctively authorized by you are purchased for your internal / personal consumption and not for commercial re-sale. You sanction us to declare and provide declaration to any governmental ascendancy on your behalf verbalizing the aforesaid purport for your orders on the Site. The Seller or the Site may abrogate an order wherein the quantities exceed the typical individual consumption. This applies both to the number of products injuctively authorized within a single order and the placing of several orders for the same product where the individual orders comprise a quantity that exceeds the typical individual consumption. What comprises a typical individual’s consumption quantity limit shall be predicated on sundry factors and at the sole discretion of the Seller or ours and may vary from individual to individual.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">You may rescind your order at no cost any time afore the item is dispatched to you.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Please note that we sell products only in quantities which correspond to the typical desiderata of an average household. This applies both to the number of products injuctively authorized within a single order and the placing of several orders for the same product where the individual orders comprise a quantity typical for a mundane household. Please review our Refund Policy.</p>', NULL, '2024-09-30 18:37:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_addresses`
--

CREATE TABLE `shipping_addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int DEFAULT '0',
  `state_id` int DEFAULT '0',
  `city_id` int DEFAULT '0',
  `zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_addresses`
--

INSERT INTO `shipping_addresses` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `country_id`, `state_id`, `city_id`, `zip_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'John Doe', 'user@gmail.com', '123-874-6548', 'Los Angeles, CA, USA', 1, 0, 0, NULL, '2022-01-30 09:57:44', '2024-09-29 15:53:31'),
(4, 4, 'Jose Larry', 'user@gmail.com', '458-854-8745', 'Florida City, FL, USA', 1, 2, 1, '45870', '2022-01-31 02:13:53', '2022-02-06 06:02:16'),
(5, 5, 'Daniel Paul', 'user@gmail.com', '123-874-6548', 'Florida City, FL, USA', 1, 2, 1, '52305', '2022-01-31 08:04:10', '2022-02-06 06:30:50'),
(6, 6, 'Robert James', 'seller@gmail.com', '458-854-8745', 'Los Angeles, CA, USA', 1, 1, 2, '9001', '2022-02-06 04:29:51', '2022-02-06 04:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_locations`
--

CREATE TABLE `shipping_locations` (
  `id` bigint UNSIGNED NOT NULL,
  `shipping_id` bigint UNSIGNED NOT NULL,
  `state_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_locations`
--

INSERT INTO `shipping_locations` (`id`, `shipping_id`, `state_id`, `created_at`, `updated_at`) VALUES
(27, 7, 1, '2024-10-26 06:52:41', '2024-10-26 06:52:41'),
(28, 7, 2, '2024-10-26 06:52:41', '2024-10-26 06:52:41'),
(29, 7, 3, '2024-10-26 06:52:41', '2024-10-26 06:52:41'),
(30, 7, 4, '2024-10-26 06:52:41', '2024-10-26 06:52:41'),
(31, 7, 5, '2024-10-26 06:52:41', '2024-10-26 06:52:41'),
(32, 7, 6, '2024-10-26 06:52:41', '2024-10-26 06:52:41'),
(33, 7, 7, '2024-10-26 06:52:41', '2024-10-26 06:52:41'),
(34, 7, 8, '2024-10-26 06:52:41', '2024-10-26 06:52:41'),
(35, 7, 9, '2024-10-26 06:52:41', '2024-10-26 06:52:41'),
(36, 7, 10, '2024-10-26 06:52:41', '2024-10-26 06:52:41'),
(37, 7, 12, '2024-10-26 06:52:41', '2024-10-26 06:52:41'),
(38, 7, 13, '2024-10-26 06:52:41', '2024-10-26 06:52:41'),
(39, 7, 21, '2024-10-26 06:52:41', '2024-10-26 06:52:41');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` double NOT NULL DEFAULT '0',
  `is_free` int NOT NULL DEFAULT '0',
  `minimum_order` double NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`id`, `title`, `fee`, `is_free`, `minimum_order`, `status`, `description`, `created_at`, `updated_at`) VALUES
(7, 'Outside City', 120, 0, 0, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '2022-01-30 09:43:24', '2024-10-26 06:52:41'),
(8, 'Inside City', 60, 0, 0, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '2022-01-30 09:43:39', '2024-08-17 01:22:12');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_carts`
--

CREATE TABLE `shopping_carts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `price` double NOT NULL,
  `tax` double NOT NULL,
  `coupon_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_price` double NOT NULL,
  `offer_type` int NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shopping_carts`
--

INSERT INTO `shopping_carts` (`id`, `user_id`, `product_id`, `name`, `qty`, `price`, `tax`, `coupon_name`, `coupon_price`, `offer_type`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(5, 1, 22, 'Suzuki Intruder M1800R', 3, 55.25, 2.7625, NULL, 0, 0, 'uploads/custom-images/suzuki-intruder-m1800r-2022-02-06-10-38-21-2749.jpg', 'suzuki-intruder-m1800r', '2022-04-27 10:35:58', '2022-04-27 10:35:58'),
(6, 1, 32, 'Casual  Fashion Shoes For Men', 1, 19.5, 0.585, NULL, 0, 0, 'uploads/custom-images/fashion-shoes-for-men-casual-shoes-comfortable-2022-02-06-02-50-15-7154.jpg', 'casual-fashion-shoes-for-men', '2022-04-27 10:36:42', '2022-04-27 10:36:42'),
(8, 1, 9, 'Apple iPhone 12 Pro Max', 1, 27, 1.35, '', 0, 0, 'uploads/custom-images/symphony-z20-2022-02-06-12-17-14-1684.jpg', 'apple-iphone-12-pro-max', '2022-04-28 04:29:22', '2022-04-28 04:29:22'),
(9, 3, 5, 'Preimum Quality Winter Hoodie For Men', 1, 70, 2.1, '', 0, 0, 'uploads/custom-images/red-hot-ink-t-shirts-2022-02-02-08-24-22-7441.jpg', 'preimum-quality-winter-hoodie-for-men', '2022-07-19 06:00:14', '2022-07-19 06:00:14'),
(10, 1, 34, '', 3, 0, 0, NULL, 0, 0, '', '', '2024-07-20 14:18:30', '2024-09-02 20:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart_variants`
--

CREATE TABLE `shopping_cart_variants` (
  `id` bigint UNSIGNED NOT NULL,
  `shopping_cart_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shopping_cart_variants`
--

INSERT INTO `shopping_cart_variants` (`id`, `shopping_cart_id`, `name`, `value`, `price`, `created_at`, `updated_at`) VALUES
(6, 7, 'Camera', '68PX', '3', '2022-04-27 10:37:40', '2022-04-27 10:37:40'),
(7, 7, 'RAM', '68GB', '1', '2022-04-27 10:37:40', '2022-04-27 10:37:40'),
(8, 7, 'Memory', '64GB', '3', '2022-04-27 10:37:40', '2022-04-27 10:37:40'),
(9, 8, 'Camera', '68PX', '3', '2022-04-28 04:29:22', '2022-04-28 04:29:22'),
(10, 8, 'RAM', '68GB', '1', '2022-04-28 04:29:22', '2022-04-28 04:29:22'),
(11, 8, 'Memory', '64GB', '3', '2022-04-28 04:29:22', '2022-04-28 04:29:22'),
(12, 9, 'Color', 'Red', '0', '2022-07-19 06:00:14', '2022-07-19 06:00:14'),
(13, 9, 'Size', 'Medium', '0', '2022-07-19 06:00:14', '2022-07-19 06:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `shop_pages`
--

CREATE TABLE `shop_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `header_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `filter_price_range` double NOT NULL DEFAULT '10000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_pages`
--

INSERT INTO `shop_pages` (`id`, `header_one`, `header_two`, `title_one`, `title_two`, `banner`, `link`, `button_text`, `status`, `filter_price_range`, `created_at`, `updated_at`) VALUES
(1, 'Up To', '70% Off', 'Women\'s Jeans Collection', 'Fashion For Women\'s', 'uploads/website-images/banner-2022-02-06-04-22-39-1426.jpg', 'product', 'Discover now', 1, 200000, NULL, '2022-02-13 13:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `serial` int NOT NULL DEFAULT '0',
  `slider_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `link`, `status`, `serial`, `slider_location`, `created_at`, `updated_at`) VALUES
(1, 'Up to 30% Offer', 'Lorem Ipsum is simply\r\ndummy text of the printing.', 'uploads/custom-images/slider-2022-02-07-02-42-31-2641.jpg', '#', 1, 2, NULL, '2022-01-30 10:25:59', '2022-02-07 11:54:46'),
(2, 'Up to 45% Offer', 'Lorem Ipsum is simply\r\ndummy text of the printing.', 'uploads/custom-images/slider-2022-02-07-08-45-04-8145.jpg', '#', 1, 1, NULL, '2022-02-07 02:45:05', '2022-02-07 11:54:14'),
(3, 'Up to 13% Offer', 'Lorem Ipsum is simply \r\ndummy text of the printing.', 'uploads/custom-images/slider-2022-02-07-09-56-43-1918.jpg', '#', 1, 3, NULL, '2022-02-07 02:46:47', '2022-02-07 11:55:04'),
(4, 'Up to 24% Offer', 'Lorem Ipsum is simply \r\ndummy text of the printing.', 'uploads/custom-images/slider-2022-02-07-09-55-37-3109.jpg', '#', 1, 4, NULL, '2022-02-07 02:48:51', '2022-02-07 11:55:19');

-- --------------------------------------------------------

--
-- Table structure for table `social_login_information`
--

CREATE TABLE `social_login_information` (
  `id` bigint UNSIGNED NOT NULL,
  `is_facebook` int NOT NULL DEFAULT '0',
  `facebook_client_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook_secret_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_gmail` int NOT NULL DEFAULT '0',
  `gmail_client_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gmail_secret_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook_redirect_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gmail_redirect_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `social_login_information`
--

INSERT INTO `social_login_information` (`id`, `is_facebook`, `facebook_client_id`, `facebook_secret_id`, `is_gmail`, `gmail_client_id`, `gmail_secret_id`, `facebook_redirect_url`, `gmail_redirect_url`, `created_at`, `updated_at`) VALUES
(1, 1, '1844188565781706', 'f32f45abcf57a4dc23ac6f2b2e8e2241', 1, '810593187924-706in12herrovuq39i2pbn483otijei8.apps.googleusercontent.com', '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', 'http://localhost/web-solution-us/ecommerce_ibrahim/callback/google', 'http://localhost/web-solution-us/ecommerce_ibrahim/callback/google', NULL, '2022-01-22 19:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `stripe_payments`
--

CREATE TABLE `stripe_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `stripe_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `stripe_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stripe_payments`
--

INSERT INTO `stripe_payments` (`id`, `status`, `stripe_key`, `stripe_secret`, `created_at`, `updated_at`, `country_code`, `currency_code`, `currency_rate`) VALUES
(1, 1, 'pk_test_51JU61aF56Pb8BOOX5ucAe5DlDwAkCZyffqlKMDUWsAwhKbdtuY71VvIzr0NgFKjq4sOVVaaeeyVXXnNWwu5dKgeq00kMzCBUm5', 'sk_test_51JU61aF56Pb8BOOXlz7jGkzJsCkozuAoRlFJskYGsgunfaHLmcvKLubYRQLCQOuyYHq0mvjoBFLzV7d8F6q8f6Hv00CGwULEEV', NULL, '2022-02-07 02:29:54', 'US', 'USD', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `verified_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_verified` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `status`, `verified_token`, `is_verified`, `created_at`, `updated_at`) VALUES
(1, 'user@gmail.com', 0, NULL, 1, '2022-01-31 01:07:56', '2022-01-31 01:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_charge` decimal(10,2) DEFAULT '0.00',
  `city_id` bigint UNSIGNED DEFAULT NULL,
  `commission_rate` decimal(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `delivery_charge`, `city_id`, `commission_rate`) VALUES
(1, 1, 'Camera', 'camera', 1, '2022-01-30 09:40:03', '2022-01-30 09:40:03', 0.00, NULL, 0.00),
(2, 4, 'Suzuki', 'suzuki', 1, '2022-01-30 10:07:45', '2022-01-30 10:07:45', 0.00, NULL, 0.00),
(3, 4, 'TVS Motor', 'tvs-motor', 1, '2022-01-30 10:07:58', '2022-01-30 10:07:58', 0.00, NULL, 0.00),
(4, 4, 'Honda', 'honda', 1, '2022-01-30 10:08:16', '2022-01-30 10:08:16', 0.00, NULL, 0.00),
(5, 5, 'T-shirt', 'tshirt', 1, '2022-01-30 10:08:32', '2022-01-30 10:08:32', 0.00, NULL, 0.00),
(6, 6, 'Face Wash', 'face-wash', 1, '2022-01-30 10:08:51', '2022-01-30 10:08:51', 0.00, NULL, 0.00),
(7, 1, 'Computer and Laptop', 'computer-and-laptop', 1, '2022-02-06 01:32:10', '2022-02-06 01:32:10', 0.00, NULL, 0.00),
(8, 1, 'Gaming Desktop', 'gaming-desktop', 1, '2022-02-06 01:38:21', '2022-02-06 01:38:21', 0.00, NULL, 0.00),
(9, 1, 'Computer Accessories', 'computer-accessories', 1, '2022-02-06 02:39:46', '2022-02-06 02:39:46', 0.00, NULL, 0.00),
(10, 2, 'Mobile Phone Accessories', 'mobile-phone-accessories', 1, '2022-02-06 02:59:54', '2022-02-06 02:59:54', 0.00, NULL, 0.00),
(11, 2, 'Samsung', 'samsung', 1, '2022-02-06 06:05:57', '2022-02-06 06:05:57', 0.00, NULL, 0.00),
(12, 2, 'I-Phone', 'iphone', 1, '2022-02-06 06:06:13', '2022-02-06 06:06:13', 0.00, NULL, 0.00),
(13, 5, 'Shirt', 'shirt', 1, '2022-02-06 06:33:51', '2022-02-06 06:33:51', 0.00, NULL, 0.00),
(14, 6, 'Shoulder Bag', 'shoulder-bag', 1, '2022-02-06 08:10:06', '2022-02-06 08:10:06', 0.00, NULL, 0.00),
(15, 5, 'Huddy', 'huddy', 1, '2022-02-06 08:42:49', '2022-02-06 08:42:49', 0.00, NULL, 0.00),
(16, 5, 'Shoes', 'shoes', 1, '2022-02-06 08:47:40', '2022-02-06 08:47:40', 0.00, NULL, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `tawk_chats`
--

CREATE TABLE `tawk_chats` (
  `id` bigint UNSIGNED NOT NULL,
  `chat_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tawk_chats`
--

INSERT INTO `tawk_chats` (`id`, `chat_link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'https://embed.tawk.to/5a7c31ded7591465c7077c48/default', 0, NULL, '2022-01-19 05:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `terms_and_conditions`
--

CREATE TABLE `terms_and_conditions` (
  `id` bigint UNSIGNED NOT NULL,
  `terms_and_condition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `terms_condition_banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_policy` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `terms_and_conditions`
--

INSERT INTO `terms_and_conditions` (`id`, `terms_and_condition`, `terms_condition_banner`, `privacy_banner`, `privacy_policy`, `created_at`, `updated_at`) VALUES
(1, '<h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Terms &amp; Conditions</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Welcome to the&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">oshin.com.bd</a>&nbsp;website (the “Site”), owned and operated by&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">Oshin Trading</a>. We are an online marketplace and these are the terms and conditions governing your access and utilization of&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">oshin.com.bd</a>&nbsp;along with its cognate sub-domains, sites, mobile app, accommodations and implements (the “Site”).</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Please read these Terms and Conditions (“Terms”, “Terms and Conditions”) conscientiously afore utilizing the&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">https://oshin.com.bd</a>/ website (the “Accommodation”) owned and operated by&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">Oshin Trading</a>&nbsp;(“us”, “we”, or “our”).</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Your access to and utilization of the Accommodation is conditioned on your acceptance of and compliance with these Terms. These Terms apply to all visitors, users and others who access or utilize the Accommodation.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">By accessing or utilizing the Accommodation you concur to be bound by these Terms. If you disaccord with any component of the terms then you may not access the Accommodation.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Accounts&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">When you create an account with us, you must provide us information that is precise, consummate, and current at all times. Failure to do so constitutes a breach of the Terms, which may result in immediate termination of your account on our Accommodation.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">You are responsible for safeguarding the password that you utilize to access the Accommodation and for any activities or actions under your password, whether your password is with our Accommodation or a third-party accommodation.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">You accede not to disclose your password to any third party. You must notify us immediately upon becoming vigilant of any breach of security or unauthorized utilization of your account.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Privacy</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Please review our Privacy Policy, which additionally governs your visit to the Site. The personal information / data provided to us by you or your utilization of the Site will be treated as rigorously confidential, in accordance with our Privacy Policy and applicable laws and regulations. If you remonstrate to your information being transferred or utilized in the manner designated in the Privacy Acquiescent, please do not utilize the Site.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Platform for Communication&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">You concur, understand and acknowledge that the Site is an online platform that enables you to purchase&nbsp;<a href=\"http://www.giftemotion.com/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">products</a>&nbsp;listed at the price denoted therein at any time from any location utilizing a payment method of your cull. You further concur and acknowledge that we are only a facilitator and cannot be a party to or control in any manner any transactions on the Site or on a payment gateway as made available to you by aamarPay. Accordingly, the contract of sale of products on the Site shall be a stringently bipartite contract between you and the sellers on our Site while the payment processing occurs between you, the accommodation provider and in case of prepayments with electronic cards your issuer bank. Accordingly, the contract of payment on the Site shall be stringently a bipartite contract between you and the accommodation provider as listed on our Site.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Availability of the Site&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We will do our best to ascertain that access to the Site is consistently available and is uninterrupted and hassle-free. However, due to the nature of the Internet and the nature of the Site, this cannot be ensured. Supplementally, your access to the Site may adscititiously be infrequently suspended or restricted to sanction for repairs, maintenance, or the prelude of incipient facilities or accommodations at any time without prior notice. We will endeavor to inhibit the frequency and duration of any such suspension or restriction.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Restricted Activities&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">You agree and undertake not to perform restricted activities listed within this section; undertaking these activities will result in an immediate rescindment of your account, accommodations, reviews, orders or any subsisting incomplete transaction with us and in rigorous cases may withal result in licit action.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Refusal to comply with the Terms and Conditions described herein or any other guidelines and policies cognate to the utilization of the Site as available on the Site at all times.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Impersonate any person or entity or to mendaciously state or otherwise misrepresent your affiliation with any person or entity.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Use the Site for illicit purposes.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Attempt to gain unauthorized access to or otherwise interfere or disrupt other computer systems or networks connected to the Platform or Accommodations.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Interfere with another’s utilization and delectation of the Site.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Post, promote or transmit through the Site any precluded materials as deemed illicit by The People’s Republic of Bangladesh.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Use or upload, in any way, any software or material that contains, or which you have reason to suspect that contains, viruses, damaging components, malignant code or deleterious components which may impair or corrupt the Site’s data or damage or interfere with the operation of another Customer’s computer or mobile contrivance or the Site and utilize the Site other than in conformance with the acceptable use policies of any connected computer networks, any applicable Internet standards and any other applicable laws.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Submissions&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Anything that you submit to the Site and/or provide to us, including reviews, will become our sole and exclusive property and shall not be returned to you. In integration to the rights applicable to any Submission, when you post comments or reviews to the Site, you additionally grant us the right to utilize the denomination that you submit, in connection with such review, comment, or other content. You shall not utilize a mendacious electronic-mail address, pretend to be someone other than yourself or otherwise bamboozle us or third parties as to the inchoation of any Submissions. We may, but shall not be obligated to, abstract or edit any Submissions without any notice or licit course applicable to us in this regard.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Claims against Objectionable Content&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">If you believe that any content on the Site is illicit, offensive (including but not circumscribed to material that is sexually explicit content or which promotes racism, bigotry, detestation or physical harm), illusory, bamboozling, abusive, indecent, harassing, blasphemous, defamatory, libelous, obscene, pornographic, pedophilic or menacing; ethnically objectionable, disparaging; or is otherwise injurious to third parties; or relates to or promotes mazuma laundering or wagering; or is inimical to minors in any way; or impersonates another person; or threatens the unity, integrity, security or sovereignty of Bangladesh or cordial cognations with peregrine States; or objectionable or otherwise unlawful in any manner whatsoever; or which consists of or contains software viruses, (“objectionable content”), please notify us immediately by following by inditing to us on&nbsp;<a href=\"https://oshin.com.bd/contact-us/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">info@oshin.com.bd</a>&nbsp;. We will make all practical endeavors to investigate and abstract valid objectionable content repined about within a plausible duration.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Claims against Infringing Content&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">If you believe that your astute property rights have been utilized in a way that gives ascend to concerns of infringement, please inscribe to us at&nbsp;<a href=\"https://oshin.com.bd/contact-us/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">info@oshin.com.bd</a>&nbsp;and we will make all possible efforts to address your solicitousness within a plausibly short time frame. Please ascertain to provide your designation, address, contact information and as many germane details of the claim including instances of infringement, proof of infringement amongst other. Please note that providing incomplete details will render your claim invalid and unutilizable for licit purposes. In integration, providing mendacious or illuding information may be considered a licit offense and may be followed by licit proceedings.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Trademarks and Copyrights&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\"><a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">oshin.com.bd</a>,&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">Oshin</a>&nbsp;logo and other marks designated on our Site are trademarks. Our graphics, logos, page headers, button icons, scripts and accommodation denominations are the trademarks or trade dress and may not be utilized in connection with any product or accommodation that does not belong to us or in any manner that is liable to cause perplexity among customers, or in any manner that disparages or discredits us. All other trademarks that appear on this Site are the property of their respective owners, who may or may not be affiliated with, connected to, or sponsored by us.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">All astute property rights, whether registered or unregistered, in the Site, information content on the Site and all the website design, including, but not constrained to text, graphics, software, photos, video, music, sound, and their cull and arrangement, and all software compilations, underlying source code and software shall remain our property. The entire contents of the Site withal are forefended by copyright as a collective work under Bangladeshi copyright laws and international conventions. All rights are reserved.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Disclaimer</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">You acknowledge that you are accessing the accommodations on the Site and transacting at your own risk and are utilizing your best and prudent discernment afore entering into any transactions through the Site. We shall neither be liable nor responsible for any actions or inactions of manufacturers for any breach of conditions, representations or warranties by the manufacturers of the products nor hereby expressly disclaim and any responsibility and liability in that regard. We shall neither be liable nor responsible for any actions or inactions of any other accommodation provider as listed on our Site including the payment gateway provider.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Communicating With Us</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">When you visit the Site, or send e-mails to us, you are communicating with us electronically.&nbsp; We may communicate with you by e-mail, SMS, phone call or by any other mode of communication we opt to employ. For contractual purposes, you consent to receive communications (including transactional, promotional and/or commercial messages), from us with veneration to your utilization of the website (and/or placement of your order) and concur to treat all modes of communication with the same paramount.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Losses</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We will not be responsible for any business or personal losses (including but not inhibited to loss of profits, revenue, contracts, anticipated savings, data, goodwill, or wasted expenditure) or any other indirect or consequential loss that is not plausibly prognosticable to both you and us when you commenced utilizing the Site.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Events beyond Our Control&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We will not be held responsible for any delay or failure to comply with our obligations under these conditions if the delay or failure arises from any cause which is beyond our plausible control. This condition does not affect your statutory rights.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Return and Refund&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Please review our Return and Refund Policy for details.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Pricing, Availability and Order Processing</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">All prices are listed in Bangladeshi Taka (BDT) and are inclusive of VAT and are listed on the Site by the seller that is selling the product or accommodation. Items in your Shopping Cart will always reflect the most recent price exhibited on the item’s product detail page. Please note that this price may differ from the price shown for the item when you first placed it in your cart. Placing an item in your cart does not reserve the price shown at that time. It is withal possible that an item’s price may decrease between the time you place it in your basket and the time you purchase it.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We do not offer price matching for any items sold by any seller on our Site or other websites. We are resolute to provide the most precise pricing information on the Site to our users; however, errors may still occur, such as cases when the price of an item is not exhibited correctly on the Site. As such, we reserve the right to reluct or abrogate any order. In the event that an item is mispriced, we may, at our own discretion, either contact you for ordinate dictations or rescind your order and notify you of such rescindment. We shall have the right to reluct or abrogate any such orders whether or not the order has been attested and your prepayment processed. If such an abrogation occurs on your prepaid order, our policies for refund will apply. Please note that&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">Oshin</a>&nbsp;possess 100% right on the restitution magnitude. Conventionally refund amount is calculated predicated on the customer paid price after deducting any remotely discount and shipping fee.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We list availability information for products listed on the Site, including on each product information page. Beyond what we verbally express on that page or otherwise on the Site, we cannot be more categorical about availability. Please note that dispatch estimates are just that. They are not ensured dispatch times and should not be relied upon as such. As we process your order, you will be apprised by e-mail or sms if any products you authoritatively mandate turn out to be unavailable.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Please note that there are cases when an order cannot be processed for sundry reasons. The Site reserves the right to reluct or rescind any order for any reason at any given time. You may be asked to provide supplemental verifications or information, including but not inhibited to phone number and address, afore we accept the order.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">In order to evade any fraud with credit or debit cards, we reserve the right to obtain validation of your payment details afore providing you with the product and to verify the personal information you shared with us. This verification can take the shape of an identity, place of residence, or banking information check. The absence of an answer following such an inquiry will automatically cause the abrogation of the order within a plausible timeline. We reserve the right to proceed to direct rescindment of an order for which we suspect a peril of fraudulent utilization of banking instruments or other reasons without prior notice or any subsequent licit liability.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Other Web Sites or Services</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">For different purposes, we utilize many third-party web sites or accommodations that are not owned or controlled by&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">Oshin Trading</a>.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\"><a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">Oshin Trading</a>&nbsp;has no control over, and surmises no responsibility for, the content, privacy policies, or practices of any third party web sites or accommodations. You further acknowledge and accede that&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">Oshin Trading</a>&nbsp;shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with utilization of or reliance on any such content, goods or accommodations available on or through any such web sites or accommodations.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Termination</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We may terminate or suspend access to our Accommodation immediately, without prior notice or liability, for any reason whatsoever, including without circumscription if you breach the Terms.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">All provisions of the Terms which by their nature should survive termination shall survive termination, including, without inhibition, ownership provisions, warranty disclaimers, indemnity and constraints of liability.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We may terminate or suspend your account immediately, without prior notice or liability, for any reason whatsoever, including without inhibition if you breach the Terms.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Upon termination, your right to utilize the Accommodation will immediately cease. If you optate to terminate your account, you may simply discontinue utilizing the Accommodation.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">All provisions of the Terms which by their nature should survive termination shall survive termination, including, without inhibition, ownership provisions, warranty disclaimers, indemnity and circumscriptions of liability.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Governing Law</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">These terms and conditions are governed by and construed in accordance with the laws of The People’s Republic of Bangladesh. You accede that the courts, tribunals and/or quasi-judicial bodies located in Dhaka, Bangladesh shall have the exclusive jurisdiction on any dispute arising inside Bangladesh under this Acquiescent.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Changes&nbsp;</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We reserve the right, at our sole discretion, to modify or supersede these Terms at any time. If a revision is material we will endeavor to provide at least 15 days notice prior to any incipient terms taking effect. What constitutes a material change will be resolute at our sole discretion.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">By perpetuating to access or utilize our Accommodation after those revisions become efficacious, you accede to be bound by the revised terms. If you do not concur to the incipient terms, please stop utilizing the Accommodation.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Others</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Stock availability: The orders are subject to availability of stock.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Delivery Timeline: The distribution might take longer than conventional timeframe/line to be followed by&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">Oshin</a>.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Distribution might be delayed due to coerce majeure event which includes, but not inhibited to, political unrest, political event, national/public holidays, etc.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Cancellation:&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">Oshin</a>&nbsp;retains ineligible right to abrogate any order at its sole discretion prior to dispatch and for any reason which may include, but not inhibited to, the product being mispriced, out of stock, expired, defective, malfunctioned, and containing erroneous information or description arising out of technical or typographical error or for any other reason.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Refund Timeline: If any order is abrogated, the payment against such order shall be restituted within 7 to 15 working days, but it may take longer time in exceptional cases. Provided that received cash back quantity, if any, will be adjusted with the restitution amplitude.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">You corroborate that the product(s) or accommodation(s) injunctively authorized by you are purchased for your internal / personal consumption and not for commercial re-sale. You sanction us to declare and provide declaration to any governmental ascendancy on your behalf verbalizing the aforesaid purport for your orders on the Site. The Seller or the Site may abrogate an order wherein the quantities exceed the typical individual consumption. This applies both to the number of products injunctively authorized within a single order and the placing of several orders for the same product where the individual orders comprise a quantity that exceeds the typical individual consumption. What comprises a typical individual’s consumption quantity limit shall be predicated on sundry factors and at the sole discretion of the Seller or ours and may vary from individual to individual.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">You may rescind your order at no cost any time afore the item is dispatched to you.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Please note that we sell products only in quantities which correspond to the typical desiderata of an average household. This applies both to the number of products injunctively authorized within a single order and the placing of several orders for the same product where the individual orders comprise a quantity typical for a mundane household. Please review our Refund Policy.</p>', 'uploads/custom-images/terms-condition-2022-02-11-03-39-59-2524.jpg', 'uploads/custom-images/privacy-policy-2022-02-11-03-40-18-7844.jpg', '<h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Protection and Privacy</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Welcome to the&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">oshin.com.bd</a>&nbsp;website (the “Site”) operated by&nbsp;<a href=\"https://oshin.com.bd/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">Oshin Trading</a>. We reverence your privacy and optate to bulwark your personal information. To learn more, please read this Privacy Policy.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">This Privacy Policy expounds how we accumulate, utilize and (under certain conditions) disclose your personal information. This Privacy Policy withal explicates the steps we have taken to secure your personal information. Conclusively, this Privacy Policy expounds your options regarding the amassment, utilize and disclosure of your personal information. By visiting the Site directly or through another site, you accept the practices described in this Policy.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Data auspice is a matter of trust and your privacy is consequential to us. We shall ergo only utilize your denomination and other information which relates to you in the manner set out in this Privacy Policy. We will only accumulate information where it is obligatory for us to do so and we will only accumulate information if it pertains to our dealings with you.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We will only keep your information for as long as we are either required to by law or as is germane for the purposes for which it was amassed.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">You can visit the Site and browse without having to provide personal details. During your visit to the Site you remain incognito and at no time can we identify you unless you have an account on the Site and authenticate on with your utilizer name and password.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Data that we accumulate</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We may accumulate sundry pieces of information if you seek to place an order for a product with us on the Site.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We accumulate, store and process your data for processing your purchase on the Site and any possible later claims, and to provide you with our accommodations. We may accumulate personal information including, but not circumscribed to, your denomination, denomination, gender, date of inception, electronic mail address, postal address, distribution address (if different), telephone number, mobile number, fax number, payment details, payment card details or bank account details.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We will utilize the information you provide to enable us to process your orders and to provide you with the accommodations and information offered through our website and which you request. Further, we will utilize the information you provide to administer your account with us; verify and carry out financial transactions in cognation to payments you make; audit the downloading of data from our website; amend the layout and/or content of the pages of our website and customize them for users; identify visitors on our website; carry out research on our users’ demographics; send you information we<a href=\"http://www.giftemotion.com/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">&nbsp;cerebrate</a>&nbsp;you may find subsidiary or which you have requested from us, including information about our products and accommodations, provided you have denoted that you have not remonstrated to being contacted for these purposes. Subject to obtaining your consent we may contact you by email with details of other&nbsp;<a href=\"http://www.giftemotion.com/\" style=\"padding: 0px; margin: 0px; text-decoration-skip-ink: none; cursor: pointer; color: var(--et_link-color); transition-duration: 0.2s; transition-timing-function: ease-out; transition-property: all;\">products</a>&nbsp;and accommodations. If you prefer not to receive any marketing communications from us, you can opt out at any time.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We may pass your denomination and address on to a third party in order to make distribution of the product to you (for example to our courier or supplier). You must only submit to us the Site information which is precise and not bamboozling and you must keep it au courant and apprise us of changes.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">Your authentic order details may be stored with us but for security reasons cannot be retrieved directly by us. However, you may access this information by logging into your account on the Site. Here you can view the details of your orders that have been consummated, those which are open and those which are shortly to be dispatched and administer your address details, bank details ( for refund purposes) and any newsletter to which you may have subscribed. You undertake to treat the personal access data confidentially and not make it available to unauthorized third parties. We cannot surmise any liability for misuse of passwords unless this misuse is our fault.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Other utilizations of your Personal Information</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We may utilize your personal information and uploading users Video and Image information for opinion and market research. Your details are incognito and will only be utilized for statistical purposes. You can opt to opt out of this at any time. Any answers to surveys or opinion polls we may ask you to consummate will not be forwarded on to third parties. Disclosing your electronic mail address is only obligatory if you would relish to take part in competitions. We preserve the answers to our surveys discretely from your electronic mail address.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We may withal send you other information about us, the Site, our other websites, our products, sales promotions, our newsletters, anything relating to other companies in our group or our business partners. If you would prefer not to receive any of this adscititious information as detailed in this paragraph (or any component of it) please click the ‘unsubscribe’ link in any electronically mail that we send to you. Within 7 working days (days which are neither (i) a Friday, nor (ii) a public holiday anywhere in Bangladesh) of receipt of your injunctive authorization we will cease to send you information as requested. If your ordinate dictation is obscure we will contact you for demystification.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We may further anonymize data about users of the Site generally and utilize it for sundry purposes, including ascertaining the general location of the users and utilization of certain aspects of the Site or a link contained in an electronic mail to those registered to receive them, and supplying that anonymized data to third parties such as publishers. However, that anonymized data will not be capable of identifying you personally.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Competitions</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">For any competition we utilize the data to notify victors and advertise our offers. You can find more details where applicable in our participation terms for the respective competition.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Third Parties and Links</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We may pass your details to other companies in our group. We may additionally pass your details to our agents and subcontractors to avail us with any of our utilizations of your data set out in our Privacy Policy. For example, we may use third parties to avail us with distributing products to you, to avail us to accumulate payments from you, to analyze data and to provide us with marketing or customer accommodation assistance.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We may exchange information with third parties for the purposes of fraud aegis and credit risk abbreviation. We may transfer our databases containing your personal information if we sell our business or part of it. Other than as set out in this Privacy Policy, we shall NOT sell or disclose your personal data to third parties without obtaining your prior consent unless this is compulsory for the purposes set out in this Privacy Policy or unless we are required to do so by law. The Site may contain advertising of third parties and links to other sites or frames of other sites. Please be vigilant that we are not responsible for the privacy practices or content of those third parties or other sites, nor for any third party to whom we transfer your data in accordance with our Privacy Policy.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Cookies</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">The acceptance of cookies is not a requisite for visiting the Site. However we would relish to point out that the utilization of the ‘basket’ functionality on the Site and authoritatively mandating is only possible with the activation of cookies. Cookies are diminutive text files which identify your computer to our server as a unique utilizer when you visit certain pages on the Site and they are stored by your Internet browser on your computer’s hard drive. Cookies can be acclimated to agenize your Internet Protocol address, preserving you time while you are on, or want to enter, the Site. We only utilize cookies for your accommodation in utilizing the Site (for example to recollect who you are when you opiate to amend your shopping cart without having to re-enter your electronic mail address) and not for obtaining or utilizing any other information about you (for example targeted advertising). Your browser can be set to not accept cookies, but this would restrict your utilization of the Site. Please accept our assurance that our utilization of cookies does not contain any personal or private details and are liberate from viruses. If you opiate to ascertain more information about cookies, go to http://www.allaboutcookies.org or to unearth information regarding abstracting them from your browser, go to http://www.allaboutcookies.org/manage-cookies/index.html.</p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">This website uses Google Analytics, a web analytics accommodation provided by Google, Inc. (“Google”). Google Analytics uses cookies, which are text files placed on your computer, to avail the website analyze how users utilize the site. The information engendered by the cookie about your utilization of the website (including your IP address) will be transmitted to and stored by Google on servers in the Coalesced States. Google will utilize this information for the purport of evaluating your utilization of the website, compiling reports on website activity for website operators and providing other accommodations relating to website activity and internet utilization. Google may additionally transfer this information to third parties where required to do so by law, or where such third parties process the information on Google’s behalf. Google will not associate your IP address with any other data held by Google. You may reelect the utilization of cookies by culling the congruous settings on your browser, however please note that if you do this you may not be able to utilize the full functionality of this website. By utilizing this website, you consent to the processing of data about you by Google in the manner and for the purposes set out above.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Security</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">We have in place opportune technical and security measures to avert unauthorized or unlawful access to or fortuitous loss of or revilement or damage to your information. When we accumulate data through the Site, we amass your personal details on a secure server. We utilize firewalls on our servers. Our security procedures betoken that we may infrequently request proof of identity afore we disclose personal information to you. You are responsible for forefending against unauthorized access to your password and to your computer.</p><h2 class=\"wp-block-heading\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0.7rem; margin-left: 0px; line-height: var(--h2-line-height); color: rgb(34, 34, 34); font-size: calc(var(--h2-size-proportion) * 1rem); font-family: Roboto, sans-serif;\">Your rights</h2><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.43rem; margin-left: 0px; line-height: var(--p-line-height,1.6); font-size: 16px; color: rgb(136, 136, 136); font-family: Roboto, sans-serif;\">If you are concerned about your data you have the right to request access to the personal data which we may hold or process about you. You have the right to require us to redress any inaccuracies in your data free of charge. At any stage you additionally have the right to ask us to stop utilizing your personal data for direct marketing purposes.</p>', '2022-01-30 12:34:53', '2024-08-17 19:47:54');

-- --------------------------------------------------------

--
-- Table structure for table `three_column_categories`
--

CREATE TABLE `three_column_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id_one` int NOT NULL DEFAULT '0',
  `sub_category_id_one` int NOT NULL DEFAULT '0',
  `child_category_id_one` int NOT NULL DEFAULT '0',
  `category_id_two` int NOT NULL DEFAULT '0',
  `sub_category_id_two` int NOT NULL DEFAULT '0',
  `child_category_id_two` int NOT NULL DEFAULT '0',
  `category_id_three` int NOT NULL DEFAULT '0',
  `sub_category_id_three` int NOT NULL DEFAULT '0',
  `child_category_id_three` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `three_column_categories`
--

INSERT INTO `three_column_categories` (`id`, `category_id_one`, `sub_category_id_one`, `child_category_id_one`, `category_id_two`, `sub_category_id_two`, `child_category_id_two`, `category_id_three`, `sub_category_id_three`, `child_category_id_three`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 2, 0, 0, 5, 0, 0, NULL, '2022-02-07 03:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forget_password_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int DEFAULT '0',
  `state_id` int DEFAULT '0',
  `city_id` int DEFAULT '0',
  `zip_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` int NOT NULL DEFAULT '0',
  `verify_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` int NOT NULL DEFAULT '0',
  `agree_policy` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `forget_password_token`, `status`, `provider_id`, `provider`, `provider_avatar`, `image`, `phone`, `country_id`, `state_id`, `city_id`, `zip_code`, `address`, `is_vendor`, `verify_token`, `email_verified`, `agree_policy`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'John Doe', 'user@gmail.com', NULL, '$2y$10$.QIsrMPt2qFXyaWAGb6g6.UJEgXsPdPaR2UE4PaFHX.u3LYxSf7Ou', NULL, NULL, 1, NULL, NULL, NULL, 'uploads/custom-images/ibrahim-khalil-2022-01-30-03-30-30-9242.jpg', '123-343-4444', 4, 1, 2, NULL, 'address', 0, NULL, 1, 0, '2022-01-30 09:25:50', '2024-09-29 16:08:49', NULL),
(4, 'Jose Larry', 'seller2@gmail.com', NULL, '$2y$10$eMR2WDQ7ScFtKZMJUoJsDuigiA.oehgr0sn9UBxOGYv5CP2RxXSTy', NULL, NULL, 1, NULL, NULL, NULL, 'uploads/custom-images/jose-larry-2022-02-06-12-21-23-7951.jpg', '123-874-6548', 1, 1, 2, NULL, NULL, 0, NULL, 1, 0, '2022-01-31 02:10:32', '2024-09-29 15:43:02', NULL),
(5, 'Daniel Paul', 'seller@gmail.com', NULL, '$2y$10$D2WVII100XB1RVn.bw2/n.H7FIQgcgg8dwq9WdndEtng4prZDmnQG', NULL, NULL, 1, NULL, NULL, NULL, 'uploads/custom-images/daniel-paul-2022-02-06-12-28-50-2254.jpg', '152-845-8745', 1, 2, 1, '52305', 'Florida City, FL, USA', 0, NULL, 1, 0, '2022-01-31 07:44:05', '2022-05-29 02:19:01', NULL),
(6, 'Robert James', 'seller3@gmail.com', NULL, '$2y$10$MyLsI2NsycsoVBcgzjgvhONaFSWIEfEnOdGpDtKQUrPzqiQqdkqmW', NULL, NULL, 1, NULL, NULL, NULL, 'uploads/custom-images/robert-james-2022-02-06-10-25-42-6928.jpg', '455-698-4587', 1, 1, 2, '90001', 'Los Angeles, CA, USA', 0, NULL, 1, 1, '2022-02-06 04:10:00', '2022-02-06 04:26:03', NULL),
(7, 'Donald Steven', 'seller1@gmail.com', NULL, '$2y$10$LQDkKLeHJY6dv5ibrcQuwO7q4EQmREoj0mywTetkwQIReL8OIMHkS', NULL, NULL, 1, NULL, NULL, NULL, 'uploads/custom-images/donald-steven-2022-02-06-01-02-47-1447.jpg', '651-789-6541', 2, 4, 8, '54121', 'Gandhinagar, Gujarat, India', 0, NULL, 1, 1, '2022-02-06 07:00:04', '2022-02-06 07:02:50', NULL),
(13, 'Rizvi', NULL, NULL, '$2y$10$V6XxZhnl.5oJTsdPVllbdeCAvL.QSMWDgUXmWI9639ywj8iPj.PBi', NULL, NULL, 1, NULL, NULL, NULL, NULL, '01740497644', 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2024-07-14 14:12:55', '2024-07-14 14:12:55', NULL),
(14, 'Rizvi Ahmed', 'rizvi1316@gmail.com', NULL, '$2y$10$bs5D2NtjG.4VoJFtz/W6sufoZDOJ5rkzrFZAGdcdIKdvcANp54Kf6', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2024-07-21 11:08:04', '2024-07-21 11:08:04', NULL),
(16, 'Saroar', 'golamsaroar88@gmail.com', NULL, '$2y$10$ZN1jef73mYSHlBmQMzSra.jkT4CymIdobXCfIXm/hoFKgEos.NnD6', NULL, NULL, 1, NULL, NULL, NULL, NULL, '45345', 4, 0, 73, '43241', '6w465r', 0, NULL, 1, 0, '2024-08-18 01:31:40', '2024-09-03 13:54:06', NULL),
(17, 'Saroar', NULL, NULL, '$2y$10$NhJMIHHMDSeCjh3BA13DVOpHqONYHsTMfjqTwva68xFoQ19eJEALW', 'csawkyck2IGbYVlxelp6Pcv5E5mqPu1ta5ChpEqQSwfcud88nRafqnX7OPdp', NULL, 1, NULL, NULL, NULL, NULL, '01404741984', 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2024-08-18 03:20:36', '2024-08-18 03:34:10', NULL),
(18, 'Saroar', NULL, NULL, '$2y$10$.ZXMuXXoCE7rIKNrYhzev.V.iLJUuYaC0L3z/LzNGhaHAasdIaFbG', NULL, NULL, 1, NULL, NULL, NULL, NULL, '01727370209', 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2024-08-18 04:45:26', '2024-09-21 12:57:12', NULL),
(19, 'asfdjhsdfhg', 'khaled.imtiaz.bd@gmail.com', NULL, '$2y$10$HLRGIfPChKaUnajsMlXISOGbDxv4mLXPJUcBvs9gcp9Sh2RbnQ8gK', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'hafsdhisdh', 0, 0, 0, NULL, NULL, 1, NULL, 1, 0, '2024-09-03 13:15:50', '2024-09-21 13:27:20', NULL),
(21, 'Rizvi Ahmed', 'rizvi@gmail.com', NULL, '$2y$10$eUnueXuAozoGdDcpPAADsuLSKWxJkneI0KD9ZsLy5QI1TYCXsRTTi', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2024-09-21 13:29:04', '2024-09-21 13:29:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `total_amount` double NOT NULL DEFAULT '0',
  `banner_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closed_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `is_featured` int NOT NULL DEFAULT '0',
  `top_rated` int NOT NULL DEFAULT '0',
  `verified_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` int NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `greeting_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state_id` bigint UNSIGNED DEFAULT NULL,
  `city_id` bigint UNSIGNED DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `seller_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_info` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `user_id`, `total_amount`, `banner_image`, `phone`, `email`, `shop_name`, `slug`, `open_at`, `closed_at`, `address`, `seo_title`, `seo_description`, `status`, `is_featured`, `top_rated`, `verified_token`, `is_verified`, `description`, `greeting_msg`, `created_at`, `updated_at`, `state_id`, `city_id`, `category_id`, `seller_name`, `product_info`) VALUES
(1, 4, 0, 'uploads/custom-images/seller-banner-2022-02-07-07-53-20-3741.jpg', '123-874-6548', 'user@gmail.com', 'Shop Name One', 'shop-name-one', '09:00', '20:00', 'San Francisco City Hall, San Francisco, CA', 'Shop name one', 'Shop name one', 1, 0, 0, NULL, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Welcome to Shop name one.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry', '2022-01-31 02:20:38', '2022-02-07 01:53:22', NULL, NULL, NULL, NULL, NULL),
(2, 5, 0, 'uploads/custom-images/seller-banner-2022-02-06-12-51-30-3032.jpg', '123-343-4444', 'user3@gmail.com', 'Shop Name Two', 'shop-name-two', '06:20', '20:30', 'Florida City, FL, USA', 'Shop name 2', 'Shop name 2', 1, 0, 0, NULL, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Welcome to Shop name 2!\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2022-01-31 08:44:13', '2022-02-06 06:55:47', NULL, NULL, NULL, NULL, NULL),
(3, 6, 0, 'uploads/custom-images/seller-banner-2022-02-07-07-51-55-3425.jpg', '455-698-4587', 'seller@gmail.com', 'Shop Name Three', 'shop-name-three', '10:00', '22:00', 'Los Angeles, CA, USA', 'Shop Name Five', 'Shop Name Five', 1, 0, 0, NULL, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Welcome to Shop Name Five!\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2022-02-06 04:28:58', '2022-06-13 02:53:27', NULL, NULL, NULL, NULL, NULL),
(4, 7, 0, 'uploads/custom-images/seller-banner-2022-02-06-01-04-56-5283.jpg', '123-343-4444', 'seller5@gmail.com', 'Shop Name Four', 'shop-name-four', '09:00', '10:00', 'Gandhinagar, Gujarat, India', 'Shop name 5', 'Shop name 5', 1, 0, 0, NULL, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Welcome to Shop name 5 ,\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2022-02-06 07:04:58', '2022-02-06 07:07:00', NULL, NULL, NULL, NULL, NULL),
(7, 14, 0, 'uploads/custom-images/seller-banner-2024-07-21-06-17-35-8466.png', '01600685215', 'rizvi1316@gmail.com', 'Onnorokom', 'onnorokom', NULL, NULL, 'Chittagong Road', 'Onnorokom', 'Onnorokom', 1, 0, 0, NULL, 0, NULL, 'Welcome to Onnorokom', '2024-07-21 12:17:35', '2024-07-21 12:27:30', NULL, NULL, NULL, NULL, NULL),
(8, 16, 0, 'uploads/custom-images/seller-banner-2024-08-17-11-18-23-6202.png', '01727370209', 'golamsaroar88@gmail.com', 'Star Garden', 'star-garden', NULL, NULL, 'Khilkhet, Dhaka- 1229.', 'Star Garden', 'Star Garden', 1, 0, 0, NULL, 0, NULL, 'Welcome to Star Garden', '2024-08-18 05:18:23', '2024-08-18 05:20:27', NULL, NULL, NULL, NULL, NULL),
(9, 19, 0, NULL, 'hafsdhisdh', 'khaled.imtiaz.bd@gmail.com', 'Star Garden', 'star-garden', NULL, NULL, 'hghcgfhgf', NULL, NULL, 1, 0, 0, NULL, 0, NULL, NULL, '2024-09-03 13:15:50', '2024-09-03 13:15:50', NULL, NULL, NULL, NULL, NULL),
(10, 21, 0, NULL, '0123456', 'rizvi@gmail.com', 'New Shop', 'new-shop', NULL, NULL, 'Dhaka', 'New Shop', 'New Shop', 0, 0, 0, NULL, 0, NULL, 'Welcome to New Shop', '2024-09-21 15:15:08', '2024-09-21 15:15:08', 1, 1, 2, 'Rizvi', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_social_links`
--

CREATE TABLE `vendor_social_links` (
  `id` bigint UNSIGNED NOT NULL,
  `vendor_id` int NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_social_links`
--

INSERT INTO `vendor_social_links` (`id`, `vendor_id`, `icon`, `link`, `created_at`, `updated_at`) VALUES
(30, 2, 'fab fa-twitter', 'https://www.twitter.com/', '2022-02-06 06:55:47', '2022-02-06 06:55:47'),
(31, 2, 'fab fa-facebook-f', 'https://www.facebook.com/', '2022-02-06 06:55:47', '2022-02-06 06:55:47'),
(32, 2, 'fab fa-linkedin', 'https://www.linkedin.com/', '2022-02-06 06:55:47', '2022-02-06 06:55:47'),
(33, 2, 'fab fa-instagram', 'https://www.instagram.com/', '2022-02-06 06:55:47', '2022-02-06 06:55:47'),
(34, 4, 'fab fa-twitter', 'https://www.twitter.com/', '2022-02-06 07:06:38', '2022-02-06 07:06:38'),
(35, 4, 'fab fa-facebook', 'https://www.facebook.com/', '2022-02-06 07:06:38', '2022-02-06 07:06:38'),
(36, 4, 'fab fa-linkedin', 'https://www.linkedin.com/', '2022-02-06 07:06:38', '2022-02-06 07:06:38'),
(37, 4, 'fab fa-instagram', 'https://www.instagram.com/', '2022-02-06 07:06:38', '2022-02-06 07:06:38'),
(38, 3, 'fab fa-facebook', 'https://www.facebook.com/', '2022-02-07 01:51:57', '2022-02-07 01:51:57'),
(39, 3, 'fab fa-twitter', 'https://www.twitter.com/', '2022-02-07 01:51:57', '2022-02-07 01:51:57'),
(40, 3, 'fab fa-linkedin', 'https://www.linkedin.com/', '2022-02-07 01:51:57', '2022-02-07 01:51:57'),
(41, 1, 'fab fa-twitter', 'https://www.twitter.com/', '2022-02-07 01:53:22', '2022-02-07 01:53:22'),
(42, 1, 'fab fa-facebook', 'https://www.facebook.com/', '2022-02-07 01:53:23', '2022-02-07 01:53:23'),
(43, 1, 'fab fa-linkedin', 'https://www.linkedin.com/', '2022-02-07 01:53:23', '2022-02-07 01:53:23'),
(44, 1, 'fab fa-instagram', 'https://www.instagram.com/', '2022-02-07 01:53:23', '2022-02-07 01:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2022-01-30 09:53:17', '2022-01-30 09:53:17'),
(3, 4, 9, '2022-02-02 08:43:09', '2022-02-02 08:43:09'),
(4, 4, 8, '2022-02-02 08:43:13', '2022-02-02 08:43:13'),
(9, 1, 7, '2022-02-07 06:34:52', '2022-02-07 06:34:52'),
(10, 1, 9, '2022-02-07 06:34:56', '2022-02-07 06:34:56'),
(11, 1, 16, '2022-02-16 03:45:31', '2022-02-16 03:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_amount` double NOT NULL DEFAULT '0',
  `max_amount` double NOT NULL DEFAULT '0',
  `withdraw_charge` double NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `name`, `min_amount`, `max_amount`, `withdraw_charge`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bank Payment', 500, 2000, 5, '<p>Please provide your Bank Account information :&nbsp;</p><p>Bank Name: Your bank name</p><p><span style=\"background-color: transparent;\">Account Number:&nbsp; Your bank account number</span></p><p>Routing Number: Your bank routing number</p><p>Branch: Your bank branch name</p>', 1, '2022-01-31 09:30:55', '2022-02-07 02:38:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aamarpay_payments`
--
ALTER TABLE `aamarpay_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `announcement_modals`
--
ALTER TABLE `announcement_modals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_payments`
--
ALTER TABLE `bank_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_images`
--
ALTER TABLE `banner_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `breadcrumb_images`
--
ALTER TABLE `breadcrumb_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_products`
--
ALTER TABLE `campaign_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_categories`
--
ALTER TABLE `child_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_pages`
--
ALTER TABLE `contact_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_consents`
--
ALTER TABLE `cookie_consents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_states`
--
ALTER TABLE `country_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_countries`
--
ALTER TABLE `currency_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_paginations`
--
ALTER TABLE `custom_paginations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_configurations`
--
ALTER TABLE `email_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `error_pages`
--
ALTER TABLE `error_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facebook_comments`
--
ALTER TABLE `facebook_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facebook_pixels`
--
ALTER TABLE `facebook_pixels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flutterwaves`
--
ALTER TABLE `flutterwaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_links`
--
ALTER TABLE `footer_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_social_links`
--
ALTER TABLE `footer_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_analytics`
--
ALTER TABLE `google_analytics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_recaptchas`
--
ALTER TABLE `google_recaptchas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_one_visibilities`
--
ALTER TABLE `home_page_one_visibilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instamojo_payments`
--
ALTER TABLE `instamojo_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintainance_texts`
--
ALTER TABLE `maintainance_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mega_menu_categories`
--
ALTER TABLE `mega_menu_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mega_menu_sub_categories`
--
ALTER TABLE `mega_menu_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_visibilities`
--
ALTER TABLE `menu_visibilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_addresses`
--
ALTER TABLE `order_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product_variants`
--
ALTER TABLE `order_product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `paymongo_payments`
--
ALTER TABLE `paymongo_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypal_payments`
--
ALTER TABLE `paypal_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paystack_and_mollies`
--
ALTER TABLE `paystack_and_mollies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `popular_categories`
--
ALTER TABLE `popular_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popular_posts`
--
ALTER TABLE `popular_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reports`
--
ALTER TABLE `product_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_report_images`
--
ALTER TABLE `product_report_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_review_galleries`
--
ALTER TABLE `product_review_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_specifications`
--
ALTER TABLE `product_specifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_specification_keys`
--
ALTER TABLE `product_specification_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_taxes`
--
ALTER TABLE `product_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variant_items`
--
ALTER TABLE `product_variant_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pusher_credentails`
--
ALTER TABLE `pusher_credentails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `razorpay_payments`
--
ALTER TABLE `razorpay_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_policies`
--
ALTER TABLE `return_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_mail_logs`
--
ALTER TABLE `seller_mail_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_withdraws`
--
ALTER TABLE `seller_withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_locations`
--
ALTER TABLE `shipping_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_cart_variants`
--
ALTER TABLE `shopping_cart_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_pages`
--
ALTER TABLE `shop_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_login_information`
--
ALTER TABLE `social_login_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stripe_payments`
--
ALTER TABLE `stripe_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tawk_chats`
--
ALTER TABLE `tawk_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `three_column_categories`
--
ALTER TABLE `three_column_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_social_links`
--
ALTER TABLE `vendor_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aamarpay_payments`
--
ALTER TABLE `aamarpay_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `announcement_modals`
--
ALTER TABLE `announcement_modals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_details`
--
ALTER TABLE `bank_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_payments`
--
ALTER TABLE `bank_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner_images`
--
ALTER TABLE `banner_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `breadcrumb_images`
--
ALTER TABLE `breadcrumb_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `campaign_products`
--
ALTER TABLE `campaign_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `child_categories`
--
ALTER TABLE `child_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=543;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_pages`
--
ALTER TABLE `contact_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cookie_consents`
--
ALTER TABLE `cookie_consents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `country_states`
--
ALTER TABLE `country_states`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currency_countries`
--
ALTER TABLE `currency_countries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custom_paginations`
--
ALTER TABLE `custom_paginations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `email_configurations`
--
ALTER TABLE `email_configurations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `error_pages`
--
ALTER TABLE `error_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `facebook_comments`
--
ALTER TABLE `facebook_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facebook_pixels`
--
ALTER TABLE `facebook_pixels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `flutterwaves`
--
ALTER TABLE `flutterwaves`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footer_links`
--
ALTER TABLE `footer_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `footer_social_links`
--
ALTER TABLE `footer_social_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `google_analytics`
--
ALTER TABLE `google_analytics`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `google_recaptchas`
--
ALTER TABLE `google_recaptchas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_page_one_visibilities`
--
ALTER TABLE `home_page_one_visibilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `instamojo_payments`
--
ALTER TABLE `instamojo_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `maintainance_texts`
--
ALTER TABLE `maintainance_texts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mega_menu_categories`
--
ALTER TABLE `mega_menu_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mega_menu_sub_categories`
--
ALTER TABLE `mega_menu_sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menu_visibilities`
--
ALTER TABLE `menu_visibilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `order_addresses`
--
ALTER TABLE `order_addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `order_product_variants`
--
ALTER TABLE `order_product_variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `paymongo_payments`
--
ALTER TABLE `paymongo_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paypal_payments`
--
ALTER TABLE `paypal_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paystack_and_mollies`
--
ALTER TABLE `paystack_and_mollies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `popular_categories`
--
ALTER TABLE `popular_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `popular_posts`
--
ALTER TABLE `popular_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `product_reports`
--
ALTER TABLE `product_reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_report_images`
--
ALTER TABLE `product_report_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_review_galleries`
--
ALTER TABLE `product_review_galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_specifications`
--
ALTER TABLE `product_specifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_specification_keys`
--
ALTER TABLE `product_specification_keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `product_taxes`
--
ALTER TABLE `product_taxes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_variant_items`
--
ALTER TABLE `product_variant_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `pusher_credentails`
--
ALTER TABLE `pusher_credentails`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `razorpay_payments`
--
ALTER TABLE `razorpay_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `return_policies`
--
ALTER TABLE `return_policies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seller_mail_logs`
--
ALTER TABLE `seller_mail_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seller_withdraws`
--
ALTER TABLE `seller_withdraws`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shipping_locations`
--
ALTER TABLE `shipping_locations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shopping_cart_variants`
--
ALTER TABLE `shopping_cart_variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `shop_pages`
--
ALTER TABLE `shop_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_login_information`
--
ALTER TABLE `social_login_information`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stripe_payments`
--
ALTER TABLE `stripe_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tawk_chats`
--
ALTER TABLE `tawk_chats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `three_column_categories`
--
ALTER TABLE `three_column_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vendor_social_links`
--
ALTER TABLE `vendor_social_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
