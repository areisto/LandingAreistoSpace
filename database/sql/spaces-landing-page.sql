-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2025 at 04:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spaces-landing-page`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name_ar`, `job_title`, `content`, `image`, `created_at`, `updated_at`, `name_en`) VALUES
(5, 'محمد السويطي', 'مدير تشغيل', '<p>النظام سهل وسريع، قدرنا نتابع كل تفاصيل العمليات اليومية بدون أوراق أو تعقيدات. وفر علينا وقت وجهد بشكل كبير، وصار عندنا صورة واضحة عن كل شيء بلحظة.</p>', 'clients\\July2025\\Pj2s1JUK9GDNOfOBUOZB.jpeg', '2025-07-01 09:21:44', '2025-07-01 09:21:44', 'Mohammed Al-Sweiti'),
(6, 'هبة عمر', 'مسؤولة خدمة العملاء', '<p>قبل ما نستخدم النظام كنا نواجه صعوبة في متابعة الطلبات والرد على العملاء. الآن كل شيء صار منظم وواضح، والرد على العملاء صار أسرع وأكثر احترافية.</p>', 'clients\\July2025\\I2cEap0k4YgtClzJBqse.jpeg', '2025-07-01 09:22:25', '2025-07-01 09:22:25', 'Hiba Omar'),
(7, 'أحمد عواد', 'صاحب منشأة', '<p>كصاحب مشروع، يهمني يكون عندي نظرة كاملة على الحجوزات والتقارير. النظام فعليًا أعطاني هالشي، وصار أسهل أتابع الأداء واتخذ قرارات أفضل.</p>', 'clients\\July2025\\t1OrYlSNZTuYplibgJ3C.jpeg', '2025-07-01 09:23:16', '2025-07-01 09:23:16', 'Ahmad Awad'),
(8, 'رنا خالد', 'مديرة فرع', '<p>سهولة الاستخدام هي أكثر شي لفتني! الموظفين تعلّموا بسرعة، وكل شيء واضح من أول لحظة. ما عدنا نعتمد على ملفات أو جداول خارجية، كل شي موجود بمكان واحد.</p>', 'clients\\July2025\\nAWFruJUQZ9Oxf8wFmz7.webp', '2025-07-01 09:23:57', '2025-07-01 09:23:57', 'Rana Khaled'),
(9, 'خالد ناصر', 'مدير تطوير الأعمال', '<p>النظام أعطانا مرونة عالية في إدارة العمليات، وساعدنا نركز على النمو بدل ما نضيع وقتنا في التفاصيل اليومية. التحديثات المستمرة كمان بتعكس فهم حقيقي لاحتياجاتنا.</p>', 'clients\\July2025\\pCnTzKOcoaZMW77VA9pH.webp', '2025-07-01 09:25:44', '2025-07-01 09:25:44', 'Khaled Nasser'),
(10, 'سلمى جابر', 'مسؤولة حجز واستقبال', '<p>كنا نستخدم عدة أدوات للتنظيم، لكن من يوم ما اعتمدنا على النظام، كل شيء صار في مكان واحد وبطريقة أوضح وأسهل. حتى الفريق الجديد قدر يتأقلم بسرعة.</p>', 'clients\\July2025\\QnGiF9UjNWtR2Za4R9du.jpg', '2025-07-01 09:26:58', '2025-07-01 09:26:58', 'Salma Jaber');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(24, 4, 'job_title', 'text', 'المسمى الوظيفي', 0, 1, 1, 1, 1, 1, '{}', 4),
(25, 4, 'content', 'rich_text_box', 'المحتوى', 0, 1, 1, 1, 1, 1, '{}', 5),
(26, 4, 'image', 'image', 'الصورة', 0, 1, 1, 1, 1, 1, '{}', 6),
(27, 4, 'created_at', 'timestamp', 'تاريخ الإنشاء', 0, 1, 1, 0, 0, 0, '{}', 7),
(28, 4, 'updated_at', 'timestamp', 'تاريخ التحديث', 0, 0, 0, 0, 0, 0, '{}', 8),
(29, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'name', 'text', 'الاسم', 0, 1, 1, 1, 1, 1, '{}', 2),
(31, 5, 'email', 'text', 'الايميل', 0, 1, 1, 1, 1, 1, '{}', 3),
(32, 5, 'message', 'rich_text_box', 'الرسالة', 0, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'created_at', 'timestamp', 'تاريخ الإنشاء', 0, 1, 1, 0, 0, 0, '{}', 5),
(34, 5, 'updated_at', 'timestamp', 'تاريخ التحديث', 0, 0, 0, 0, 0, 0, '{}', 6),
(35, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(36, 6, 'email', 'text', 'الايميل', 0, 1, 1, 1, 1, 1, '{}', 2),
(37, 6, 'created_at', 'timestamp', 'تاريخ الإنشاء', 0, 1, 1, 0, 0, 0, '{}', 3),
(38, 6, 'updated_at', 'timestamp', 'تاريخ التحديث', 0, 0, 0, 0, 0, 0, '{}', 4),
(39, 4, 'name_ar', 'text', 'الاسم بالعربي', 0, 1, 1, 1, 1, 1, '{}', 2),
(40, 4, 'name_en', 'text', 'الاسم بالانجليزي', 0, 0, 1, 1, 1, 1, '{}', 3),
(41, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(42, 7, 'body', 'rich_text_box', 'Body', 0, 1, 1, 1, 1, 1, '{}', 2),
(43, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(44, 7, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '{}', 4),
(45, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(46, 8, 'invoice_id', 'text', 'Invoice Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(47, 8, 'plan', 'text', 'Plan', 0, 1, 1, 1, 1, 1, '{}', 3),
(48, 8, 'quantity', 'number', 'Quantity', 0, 1, 1, 1, 1, 1, '{}', 4),
(49, 8, 'total', 'text', 'Total', 0, 1, 1, 1, 1, 1, '{}', 5),
(50, 8, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 6),
(51, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 7),
(52, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(53, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(54, 9, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 2),
(55, 9, 'price', 'number', 'Price', 0, 1, 1, 1, 1, 1, '{}', 3),
(56, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 4),
(57, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2025-06-27 11:54:38', '2025-06-27 11:54:38'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2025-06-27 11:54:38', '2025-06-27 11:54:38'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2025-06-27 11:54:38', '2025-06-27 11:54:38'),
(4, 'clients', 'clients', 'Client', 'Clients', 'voyager-people', 'App\\Models\\Client', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-06-27 11:57:46', '2025-07-01 08:38:47'),
(5, 'contacts', 'contacts', 'Contact', 'Contacts', 'voyager-paper-plane', 'App\\Models\\Contact', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-06-27 12:07:08', '2025-06-27 12:08:00'),
(6, 'newsletters', 'newsletters', 'Newsletter', 'Newsletters', 'voyager-news', 'App\\Models\\Newsletter', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2025-06-27 12:21:32', '2025-06-27 12:21:32'),
(7, 'privacy_policies', 'privacy-policies', 'Privacy Policy', 'Privacy Policies', 'voyager-lock', 'App\\Models\\PrivacyPolicy', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-07-03 06:11:41', '2025-07-03 06:12:23'),
(8, 'invoices', 'invoices', 'Invoice', 'Invoices', 'voyager-tag', 'App\\Models\\Invoice', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2025-07-27 10:49:26', '2025-07-27 10:49:26'),
(9, 'plans', 'plans', 'Plan', 'Plans', 'voyager-pie-graph', 'App\\Models\\Plan', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-07-27 10:51:00', '2025-07-27 11:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` varchar(255) DEFAULT NULL,
  `plan` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` mediumblob DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2025-06-27 11:54:38', '2025-06-27 11:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2025-06-27 11:54:38', '2025-06-27 11:54:38', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2025-06-27 11:54:38', '2025-06-27 11:54:38', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2025-06-27 11:54:38', '2025-06-27 11:54:38', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2025-06-27 11:54:38', '2025-06-27 11:54:38', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2025-06-27 11:54:38', '2025-06-27 11:54:38', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2025-06-27 11:54:38', '2025-06-27 11:54:38', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2025-06-27 11:54:38', '2025-06-27 11:54:38', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2025-06-27 11:54:38', '2025-06-27 11:54:38', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2025-06-27 11:54:38', '2025-06-27 11:54:38', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2025-06-27 11:54:38', '2025-06-27 11:54:38', 'voyager.settings.index', NULL),
(11, 1, 'Clients', '', '_self', 'voyager-people', NULL, NULL, 15, '2025-06-27 11:57:46', '2025-06-27 11:57:46', 'voyager.clients.index', NULL),
(12, 1, 'Contacts', '', '_self', 'voyager-paper-plane', NULL, NULL, 16, '2025-06-27 12:07:08', '2025-06-27 12:07:08', 'voyager.contacts.index', NULL),
(13, 1, 'Newsletters', '', '_self', 'voyager-news', NULL, NULL, 17, '2025-06-27 12:21:32', '2025-06-27 12:21:32', 'voyager.newsletters.index', NULL),
(14, 1, 'Privacy Policies', '', '_self', 'voyager-lock', '#000000', NULL, 18, '2025-07-03 06:11:41', '2025-07-03 06:22:08', 'voyager.privacy-policies.edit', '1'),
(15, 1, 'Invoices', '', '_self', 'voyager-tag', NULL, NULL, 19, '2025-07-27 10:49:27', '2025-07-27 10:49:27', 'voyager.invoices.index', NULL),
(16, 1, 'Plans', '', '_self', 'voyager-pie-graph', '#000000', NULL, 20, '2025-07-27 10:51:00', '2025-07-27 10:51:46', 'voyager.plans.index', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2025-06-27 11:54:38', '2025-06-27 11:54:38'),
(2, 'browse_bread', NULL, '2025-06-27 11:54:38', '2025-06-27 11:54:38'),
(3, 'browse_database', NULL, '2025-06-27 11:54:38', '2025-06-27 11:54:38'),
(4, 'browse_media', NULL, '2025-06-27 11:54:38', '2025-06-27 11:54:38'),
(5, 'browse_compass', NULL, '2025-06-27 11:54:38', '2025-06-27 11:54:38'),
(6, 'browse_menus', 'menus', '2025-06-27 11:54:38', '2025-06-27 11:54:38'),
(7, 'read_menus', 'menus', '2025-06-27 11:54:38', '2025-06-27 11:54:38'),
(8, 'edit_menus', 'menus', '2025-06-27 11:54:39', '2025-06-27 11:54:39'),
(9, 'add_menus', 'menus', '2025-06-27 11:54:39', '2025-06-27 11:54:39'),
(10, 'delete_menus', 'menus', '2025-06-27 11:54:39', '2025-06-27 11:54:39'),
(11, 'browse_roles', 'roles', '2025-06-27 11:54:39', '2025-06-27 11:54:39'),
(12, 'read_roles', 'roles', '2025-06-27 11:54:39', '2025-06-27 11:54:39'),
(13, 'edit_roles', 'roles', '2025-06-27 11:54:39', '2025-06-27 11:54:39'),
(14, 'add_roles', 'roles', '2025-06-27 11:54:39', '2025-06-27 11:54:39'),
(15, 'delete_roles', 'roles', '2025-06-27 11:54:39', '2025-06-27 11:54:39'),
(16, 'browse_users', 'users', '2025-06-27 11:54:39', '2025-06-27 11:54:39'),
(17, 'read_users', 'users', '2025-06-27 11:54:39', '2025-06-27 11:54:39'),
(18, 'edit_users', 'users', '2025-06-27 11:54:39', '2025-06-27 11:54:39'),
(19, 'add_users', 'users', '2025-06-27 11:54:39', '2025-06-27 11:54:39'),
(20, 'delete_users', 'users', '2025-06-27 11:54:39', '2025-06-27 11:54:39'),
(21, 'browse_settings', 'settings', '2025-06-27 11:54:39', '2025-06-27 11:54:39'),
(22, 'read_settings', 'settings', '2025-06-27 11:54:39', '2025-06-27 11:54:39'),
(23, 'edit_settings', 'settings', '2025-06-27 11:54:39', '2025-06-27 11:54:39'),
(24, 'add_settings', 'settings', '2025-06-27 11:54:39', '2025-06-27 11:54:39'),
(25, 'delete_settings', 'settings', '2025-06-27 11:54:39', '2025-06-27 11:54:39'),
(26, 'browse_clients', 'clients', '2025-06-27 11:57:46', '2025-06-27 11:57:46'),
(27, 'read_clients', 'clients', '2025-06-27 11:57:46', '2025-06-27 11:57:46'),
(28, 'edit_clients', 'clients', '2025-06-27 11:57:46', '2025-06-27 11:57:46'),
(29, 'add_clients', 'clients', '2025-06-27 11:57:46', '2025-06-27 11:57:46'),
(30, 'delete_clients', 'clients', '2025-06-27 11:57:46', '2025-06-27 11:57:46'),
(31, 'browse_contacts', 'contacts', '2025-06-27 12:07:08', '2025-06-27 12:07:08'),
(32, 'read_contacts', 'contacts', '2025-06-27 12:07:08', '2025-06-27 12:07:08'),
(33, 'edit_contacts', 'contacts', '2025-06-27 12:07:08', '2025-06-27 12:07:08'),
(34, 'add_contacts', 'contacts', '2025-06-27 12:07:08', '2025-06-27 12:07:08'),
(35, 'delete_contacts', 'contacts', '2025-06-27 12:07:08', '2025-06-27 12:07:08'),
(36, 'browse_newsletters', 'newsletters', '2025-06-27 12:21:32', '2025-06-27 12:21:32'),
(37, 'read_newsletters', 'newsletters', '2025-06-27 12:21:32', '2025-06-27 12:21:32'),
(38, 'edit_newsletters', 'newsletters', '2025-06-27 12:21:32', '2025-06-27 12:21:32'),
(39, 'add_newsletters', 'newsletters', '2025-06-27 12:21:32', '2025-06-27 12:21:32'),
(40, 'delete_newsletters', 'newsletters', '2025-06-27 12:21:32', '2025-06-27 12:21:32'),
(41, 'browse_privacy_policies', 'privacy_policies', '2025-07-03 06:11:41', '2025-07-03 06:11:41'),
(42, 'read_privacy_policies', 'privacy_policies', '2025-07-03 06:11:41', '2025-07-03 06:11:41'),
(43, 'edit_privacy_policies', 'privacy_policies', '2025-07-03 06:11:41', '2025-07-03 06:11:41'),
(44, 'add_privacy_policies', 'privacy_policies', '2025-07-03 06:11:41', '2025-07-03 06:11:41'),
(45, 'delete_privacy_policies', 'privacy_policies', '2025-07-03 06:11:41', '2025-07-03 06:11:41'),
(46, 'browse_invoices', 'invoices', '2025-07-27 10:49:27', '2025-07-27 10:49:27'),
(47, 'read_invoices', 'invoices', '2025-07-27 10:49:27', '2025-07-27 10:49:27'),
(48, 'edit_invoices', 'invoices', '2025-07-27 10:49:27', '2025-07-27 10:49:27'),
(49, 'add_invoices', 'invoices', '2025-07-27 10:49:27', '2025-07-27 10:49:27'),
(50, 'delete_invoices', 'invoices', '2025-07-27 10:49:27', '2025-07-27 10:49:27'),
(51, 'browse_plans', 'plans', '2025-07-27 10:51:00', '2025-07-27 10:51:00'),
(52, 'read_plans', 'plans', '2025-07-27 10:51:00', '2025-07-27 10:51:00'),
(53, 'edit_plans', 'plans', '2025-07-27 10:51:00', '2025-07-27 10:51:00'),
(54, 'add_plans', 'plans', '2025-07-27 10:51:00', '2025-07-27 10:51:00'),
(55, 'delete_plans', 'plans', '2025-07-27 10:51:00', '2025-07-27 10:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(34, 1),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(39, 1),
(40, 1),
(40, 2),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `type`, `price`, `created_at`, `updated_at`) VALUES
(1, 'يومي', 10, '2025-07-27 10:53:51', '2025-07-27 10:53:51'),
(2, 'أسبوعي', 50, '2025-07-27 10:54:02', '2025-07-27 10:54:02'),
(3, 'شهري', 200, '2025-07-27 10:54:15', '2025-07-27 10:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `body`, `created_at`, `updated_at`) VALUES
(1, '<p>At Areisto Space, we value your privacy and are committed to protecting your personal&nbsp;information. This Privacy Policy explains how we collect, use, and share your data, as well&nbsp;as your rights as a user.</p>\r\n<p>&nbsp;</p>\r\n<p>1. Information We Collect<br>When you use our app or website, we may collect the following types of information:<br><br>A. Registration Information:<br>- Full name<br>- ID number<br>- Email address<br>- Phone number<br>- User type (Student, Freelancer, Employee)<br>- University or employer information<br><br>B. Technical Information:<br>- Device type and OS<br>- IP address<br>- Usage logs and session duration<br><br>C. Booking and Usage Data:<br>- Workspace booking details<br>- Check-in/out times<br>- User ratings</p>\r\n<p>2. How We Use the Information<br>We use the collected data for the following purposes:<br>- To create and manage user accounts<br>- To process bookings and requests<br>- To improve the quality of services and the app<br>- To send important notifications and alerts<br>- To respond to inquiries and provide technical support<br>- For analytical and system development purposes<br><br>3. Data Security<br>We implement strict security measures to protect your data:<br>- Data encryption during transmission and storage<br>- Restricted access to sensitive information<br>- Regular system security audits<br><br>4. Information Sharing<br>We do not sell or share your personal data with third parties, except in the following cases:<br>- With your explicit consent<br>- Upon legal request by authorities<br>- To protect the rights of the app or its users in emergencies<br><br>5. Your Rights<br>You have the right to:<br>- Request correction or update of your data<br>- Request deletion of your account and related information<br>- Withdraw consent for data usage<br>- Request a copy of your data by contacting us<br><br>6. Cookies<br>Our website uses cookies to enhance user experience. You can disable cookies in your&nbsp;browser settings.<br><br>7. Changes to This Policy<br>We may update this policy occasionally. Major changes will be notified via email or in-app&nbsp;notification.<br><br>8. Contact Us<br>If you have any questions about this Privacy Policy, contact us at:<br>Email: <a href=\"mailto:info@areisto.com\" target=\"_blank\" rel=\"noopener\">info@areisto.com</a></p>', NULL, '2025-07-03 06:39:58');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2025-06-27 11:54:38', '2025-06-27 11:54:38'),
(2, 'user', 'Normal User', '2025-06-27 11:54:38', '2025-06-27 11:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$3DM6xq/ec0lmV7Qx45zkHOwWYY/ELypevPQF2ryTi5q.PC.YE1o4O', NULL, NULL, '2025-06-27 11:54:52', '2025-06-27 11:54:52'),
(2, 2, 'Adham', 'adham@areisto.com', 'users\\July2025\\mVG58ddseAGgFaT71HYC.webp', NULL, '$2y$10$CoALb/XltbceM8wctIOAh.ar3i3pCpphrVc6UPqEmemMweGHi6RJW', NULL, '{\"locale\":\"en\"}', '2025-07-01 09:36:15', '2025-07-01 09:36:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
